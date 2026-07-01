import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trisquare_locus/utils/screen_size_config.dart';
import '../bloc/checkLoginBloc.dart';
import '../model/checkloginform_model.dart';
import '../model/login_model.dart';
import '../routes/app_routes.dart';
import '../service/login_service.dart';
import '../state/checklogin_state.dart';
import '../themes/app_colors.dart';
import '../widgets/app_top_bar.dart';
import 'missed_requestlist_page.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({Key? key}) : super(key: key);

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage>
    with WidgetsBindingObserver {
  late final LoginModel loginModel;

  late LatLng currentPostion;

  final focusNode = FocusNode();

  String? _currentAddress;

  Position? _currentPosition;

  String selectedOutput = "O";

  int index = 1;

  TextEditingController remarkController = TextEditingController();

  final ImagePicker _picker = ImagePicker();

  XFile? file;

  late Timer timer;

  final secondNotifier = ValueNotifier<int>(0);

  bool permissionPopup = false;

  bool isCamera = false;

  late CheckLoginModelForm checkLoginModelForm = CheckLoginModelForm();

  @override
  void initState() {
    loginModel =
        Provider.of<LoginService>(context, listen: false).getCurrentUser!;
    context.read<CheckLoginBloc>().init();
    isCamera = loginModel.isCamera ?? false;
    print(isCamera);
    getData();
    initTimer();
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      context.read<CheckLoginBloc>().init();
      setState(() {});
    } else {
      //print("Not Not");
    }
  }

  getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      permissionPopup = prefs.getBool("permissionPopup") ?? false;
      if (!permissionPopup) {
        _showDialog();
      }
    });
    _getCurrentPosition();
    _getUserLocation();
    // print(permissionPopup);
  }

  _showDialog() async {
    await Future.delayed(const Duration(milliseconds: 50));
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Permission Policy\n Why we need this ?"),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Location Permission",
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 16.dw),
                ),
                const Text(
                  "Locus needs your location coordinates for a host of activities – attendance management,to coordinate with your field teams and to make possible your travel reimbursement claims.",
                ),
                Text(
                  "Camera Permission",
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 16.dw),
                ),
                const Text(
                  "This is to check whether the person himself/herself is marking the attendance.\nFurther , This is to enable our users to capture and attach photos of their expense bills while submitting for reimbursement.\n It also helps them attach photos while collecting data through custom forms.",
                ),
              ],
            ),
            actions: [
              Center(
                child: ElevatedButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      prefs.setBool("permissionPopup", true);
                      Navigator.pop(context);
                      _getCurrentPosition();
                      _getUserLocation();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.portalgreen,
                        minimumSize: Size(150.dw, 50.dw)),
                    child: Text(
                      "Confirm",
                      style: TextStyle(fontSize: 18.dw),
                    )),
              )
            ],
          );
        });
  }

  initTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      secondNotifier.value = timer.tick;
    });
  }

  @override
  dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppTopBar(title: "Attendance"),
      bottomNavigationBar: BottomAppBar(
        child: _buildbottomBar(),
      ),
      body: SafeArea(child: SingleChildScrollView(child: _buildContent())),
    );
  }

  Widget _buildContent() {
    final attendances = context.watch<CheckLoginBloc>().state;
    final hasCheckIN = attendances.form.checkInData != null;
    print(hasCheckIN);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildDateTime(
              dateFormat:
                  DateFormat("EEE, MMM- dd - yyyy").format(DateTime.now()),
            ),
            ValueListenableBuilder(
                valueListenable: secondNotifier,
                builder: (_, ___, __) {
                  return _buildDateTime(
                      dateFormat:
                          DateFormat("hh:mm aaa").format(DateTime.now()));
                })
          ],
        ),
        _buildInfoCard(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: ScreenSizeConfig.getFullWidth / 1.4,
                child: Text(
                  _currentAddress ?? "",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 16.dw),
                ),
              ),
              InkWell(
                onTap: () async {
                  setState(() {
                    _getCurrentPosition();
                  });
                },
                child: const Icon(Icons.refresh),
              ),
            ],
          ),
        ),
        // _buildRadioButton(),
        // _buildTextField(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (hasCheckIN) _buildCheckOutButton(title: "Check- Out"),
            if (!hasCheckIN) _buildCheckInButton(title: "Check- In"),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildCheckinCard(),
            _buildCheckOutCard(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [_buildMissedRequest(), _buildTeamAttendanceButton()],
        )
      ],
    );
  }

  _buildDateTime({required dateFormat}) {
    return Padding(
      padding: EdgeInsets.all(8.dw),
      child: Text(
        dateFormat,
        style: TextStyle(
            color: AppColors.navyblue,
            fontSize: 16.dw,
            fontWeight: FontWeight.w600),
      ),
    );
  }

  _buildTextField() {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.dw),
      child: SizedBox(
        width: ScreenSizeConfig.getFullWidth / 1.1,
        height: 40.dw,
        child: TextField(
          onTap: () {},
          style: TextStyle(fontSize: 14.dw),
          controller: remarkController,
          focusNode: focusNode,
          decoration: InputDecoration(
            hintText: "Remark/Client Site Name",
            contentPadding: EdgeInsets.all(8.dw),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.dw),
                borderSide: const BorderSide(color: AppColors.black)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.dw),
                borderSide: const BorderSide(color: AppColors.black)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.dw),
                borderSide: const BorderSide(color: AppColors.black)),
          ),
        ),
      ),
    );
  }

  _buildInfoCard() {
    return Card(
      margin: EdgeInsets.all(8.dw),
      color: Colors.grey.shade100,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.dw)),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0.dw),
            child: CircleAvatar(
              foregroundImage: const AssetImage("assets/images/profile2.png"),
              radius: 20.dw,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildText(
                  title:
                      "${loginModel.emp_first_name!} ${loginModel.emp_last_name!} - ${loginModel.emp_cd!}"),
              _buildText(title: loginModel.description ?? "")
            ],
          )
        ],
      ),
    );
  }

  _buildText({required String title}) {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.dh),
    );
  }

  _buildCheckinCard() {
    return SizedBox(
      width: ScreenSizeConfig.sWidth,
      child: Card(
        color: Colors.grey.shade50,
        elevation: 10,
        margin: EdgeInsets.only(left: 10.dw, right: 10.dw, bottom: 10.dw),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.dw)),
        child:
            BlocBuilder<CheckLoginBloc, CheckLoginState>(builder: (_, state) {
          final hasCheckIn = state.form.checkInData != null;
          final address = hasCheckIn ? state.form.checkInData?.address : null;
          final isLoading = state.maybeWhen(
              loading: (action, _) => action == AttendanceAction.checkIn,
              orElse: () => false);
          return Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(8.dw),
                decoration: BoxDecoration(
                    color: AppColors.brown,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.dw),
                        topRight: Radius.circular(20.dw))),
                height: 40.dh,
                width: ScreenSizeConfig.getFullWidth,
                child: Text(
                  "First Check-In",
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 16.dw),
                  textAlign: TextAlign.center,
                ),
              ),
              isLoading
                  ? Padding(
                      padding: EdgeInsets.all(8.0.dw),
                      child: Center(
                          child: SizedBox(
                              width: 20.dw,
                              height: 20.dw,
                              child: CircularProgressIndicator(
                                  color: AppColors.red))),
                    )
                  : Column(
                      children: [
                        Center(
                          child: _buildDateTime(
                              dateFormat: hasCheckIn
                                  ? DateFormat("hh:mm aa").format(
                                      DateFormat("yyyy-MM-dd hh:mm:ss").parse(
                                          state.form.checkInData?.officepunch ??
                                              ""))
                                  : "--"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 10.dw, right: 10.dw, bottom: 5.dw),
                          child: Text(
                            address == null
                                ? " Please check-in"
                                : "Address : $address",
                            style: TextStyle(fontSize: 16.dw),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    )
            ],
          );
        }),
      ),
    );
  }

  _buildCheckOutCard() {
    return SizedBox(
      width: ScreenSizeConfig.sWidth,
      child: Card(
        color: Colors.grey.shade50,
        elevation: 10,
        margin: EdgeInsets.only(left: 10.dw, right: 10.dw, top: 10.dw),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.dw)),
        child: BlocBuilder<CheckLoginBloc, CheckLoginState>(
          builder: (_, state) {
            final hasCheckOut = state.form.checkOutData != null;
            final checkOutAddress =
                hasCheckOut ? state.form.checkOutData?.address : null;
            final isLoading = state.maybeWhen(
                loading: (action, _) => action == AttendanceAction.checkOut,
                orElse: () => false);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(8.dh),
                  decoration: BoxDecoration(
                      color: AppColors.brown,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.dw),
                          topRight: Radius.circular(20.dw))),
                  height: 40.dh,
                  width: ScreenSizeConfig.getFullWidth,
                  child: Text(
                    "Last Check-Out",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.dw),
                    textAlign: TextAlign.center,
                  ),
                ),
                isLoading
                    ? Padding(
                        padding: EdgeInsets.all(8.0.dw),
                        child: Center(
                            child: SizedBox(
                                width: 20.dw,
                                height: 20.dw,
                                child: CircularProgressIndicator(
                                    color: AppColors.red),),),
                      )
                    : Column(
                        children: [
                          Center(
                            child: _buildDateTime(
                                dateFormat: hasCheckOut
                                    ? DateFormat("hh:mm aa").format(
                                        DateFormat("yyyy-MM-dd hh:mm:ss").parse(
                                            state.form.checkOutData
                                                    ?.officepunch ??
                                                ""))
                                    : "--"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 10.dw, right: 10.dw, bottom: 5.dw),
                            child: Text(
                              checkOutAddress == null
                                  ? " Please check-out"
                                  : "Address : $checkOutAddress",
                              style: TextStyle(fontSize: 16.dw),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      )
              ],
            );
          },
        ),
      ),
    );
  }

  _buildCheckInButton({required String title}) {
    return Padding(
      padding: EdgeInsets.all(10.dw),
      child: SizedBox(
        width: ScreenSizeConfig.getFullWidth / 1.1,
        child: ElevatedButton(
            onPressed: () async {

              if (isCamera) {
                final XFile? camera = await _picker.pickImage(
                  source: ImageSource.camera,
                  imageQuality: 20,
                );

                setState(() {
                  file = camera;
                });
              } else {
                file = null;
              }

              showConfirmationDialog();
            },
            style: ElevatedButton.styleFrom(
                elevation: 10.dw,
                backgroundColor: AppColors.navyblue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.dw))),
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 18.dh, fontWeight: FontWeight.w600),
            )),
      ),
    );
  }

  _buildCheckOutButton({required String title}) {
    return Padding(
      padding: EdgeInsets.all(8.dw),
      child: SizedBox(
        width: ScreenSizeConfig.getFullWidth / 1.1,
        child: ElevatedButton(
            onPressed: () async {

              if (isCamera) {
                final XFile? camera = await _picker.pickImage(
                  source: ImageSource.camera,
                  imageQuality: 20,
                );

                setState(() {
                  file = camera;
                });
              } else {
                file = null;
              }
              showConfirmationCheckOutDialog();
            },
            style: ElevatedButton.styleFrom(
                elevation: 10.dw,
                backgroundColor: AppColors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.dw))),
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 18.dh, fontWeight: FontWeight.w600),
            )),
      ),
    );
  }

  _buildMissedRequest() {
    return Padding(
      padding: EdgeInsets.only(top: 20.dw),
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MissedRequest()));
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.portalorange,
              maximumSize: Size(180.dw, 60.dh),
              minimumSize: Size(180.dw, 60.dh)),
          child: Text(
            "My Missed Request",
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.dw),
          )),
    );
  }

  _buildTeamAttendanceButton() {
    return Padding(
      padding: EdgeInsets.only(top: 20.dw),
      child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.teamattendance);
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.portalgreyBlue,
              maximumSize: Size(180.dw, 60.dh),
              minimumSize: Size(180.dw, 60.dh)),
          child: Text(
            "Miss - Punch Approval",
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.visible,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.dw),
          )
          // Text(
          //   "Team Attedance",
          //   maxLines: 2,
          //   textAlign: TextAlign.center,
          //   overflow: TextOverflow.visible,
          //   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.dw),
          // )
          ),
    );
  }

  _buildbottomBar() {
    return BottomAppBar(
      elevation: 10,
      color: AppColors.brown,
      child: Padding(
        padding: EdgeInsets.all(8.0.dw),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.attendanceDetailPage);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.pastelgreen,
          ),
          child: Text(
            "Attendance Details",
            style: TextStyle(
                color: AppColors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18.dw),
          ),
        ),
      ),
    );
  }

  _buildRadioButton() {
    return Container(
      padding: EdgeInsets.all(20.dw),
      width: ScreenSizeConfig.getFullWidth,
      height: 80.dh,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            // width: 100.dw,
            child: Row(
              children: [
                Image.asset(
                  "assets/images/office.png",
                  scale: 20.dw,
                ),
                Radio<String>(
                  value: "O",
                  groupValue: selectedOutput,
                  activeColor: Colors.white,
                  fillColor: WidgetStateProperty.all(AppColors.red),
                  onChanged: (value) {
                    setState(() {
                      selectedOutput = value!;
                    });
                  },
                ),
                const Text("Office")
              ],
            ),
          ),
          SizedBox(
            // width: 100.dw,
            child: Row(
              children: [
                Image.asset(
                  "assets/images/client.png",
                  scale: 20.dw,
                ),
                Radio<String>(
                  value: "C",
                  groupValue: selectedOutput,
                  fillColor: WidgetStateProperty.all(AppColors.red),
                  activeColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      selectedOutput = value!;
                    });
                  },
                ),
                const Text("Client")
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<bool> showConfirmationDialog() async {
    checkInCallback() async {
      final bloc = context.read<CheckLoginBloc>();
      isCamera ? await bloc.checkIn(remarkController.text, selectedOutput,
          _currentAddress.toString(), file!.path ) :
      await bloc.checkIn1(remarkController.text, selectedOutput,
          _currentAddress.toString() );
      bloc.state.maybeWhen(
          content: (_, form) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(form.message!)));
            bloc.init();
            //focusNode.();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          failed: (_, __, error) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(error)));
          },
          orElse: () {});
    }

    return await showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: const Text("Are you sure you want to Check In?"),
                actions: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.red,
                            minimumSize: Size(80.dw, 50.dh),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop(false);
                          },
                          child: const Text("No")),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.portalgreen,
                            minimumSize: Size(80.dw, 50.dh),
                          ),
                          onPressed: () async {
                            final isGrantedPermission = await context
                                .read<CheckLoginBloc>()
                                .checkIfPermissionIsGiven();
                            if (isGrantedPermission) {
                              checkInCallback();
                              Navigator.pop(context);
                            } else {
                              Navigator.pop(context);
                              showDialog(
                                  context: context,
                                  builder: (_) {
                                    return Dialog(
                                      backgroundColor: AppColors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.dw)),
                                      child: SizedBox(
                                        height: 200.dh,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          //mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(10.0.dh),
                                              child: const Text(
                                                  'Location permission is needed to use this feature.'),
                                            ),
                                            //SizedBox(height: 10),
                                            ElevatedButton(
                                                onPressed: () async {
                                                  final isGrantedPermission =
                                                      await context
                                                          .read<
                                                              CheckLoginBloc>()
                                                          .requestPermission();
                                                  if (isGrantedPermission) {
                                                    checkInCallback();
                                                    Navigator.pop(context);
                                                  }
                                                  // showOptionsDialog(context);
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        AppColors.brown),
                                                child: const Text(
                                                    'Check Permissions')),
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            }
                          },
                          child: const Text("Yes")),
                    ],
                  )
                ],
              );
            }) ??
        false;
  }

  Future<bool> showConfirmationCheckOutDialog() async {
    checkInCallback() async {
      final bloc = context.read<CheckLoginBloc>();
      if (isCamera) {
        await bloc.checkOut(
          remarkController.text,
          selectedOutput,
          _currentAddress.toString(),
          file!.path,
        );
      } else {
        await bloc.checkOut1(
          remarkController.text,
          selectedOutput,
          _currentAddress.toString(),
        );
      }
      bloc.state.maybeWhen(
          content: (_, form) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(form.message!)));
            bloc.init();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          failed: (_, __, error) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(error)));
          },
          orElse: () {});
    }

    return await showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: const Text("Are you sure you want to Check Out ?"),
                actions: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.red,
                            minimumSize: Size(80.dw, 50.dh),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop(false);
                          },
                          child: const Text("No")),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.portalgreen,
                            minimumSize: Size(80.dw, 50.dh),
                          ),
                          onPressed: () async {
                            final isGrantedPermission = await context
                                .read<CheckLoginBloc>()
                                .checkIfPermissionIsGiven();
                            if (isGrantedPermission) {
                              checkInCallback();
                              Navigator.pop(context);
                            } else {
                              Navigator.pop(context);
                              showDialog(
                                  context: context,
                                  builder: (_) {
                                    return Dialog(
                                      backgroundColor: AppColors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.dw)),
                                      child: SizedBox(
                                        height: 200.dh,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          //mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(10.0.dh),
                                              child: const Text(
                                                  'Location permission is needed to use this feature.'),
                                            ),
                                            //SizedBox(height: 10),
                                            ElevatedButton(
                                                onPressed: () async {
                                                  final isGrantedPermission =
                                                      await context
                                                          .read<
                                                              CheckLoginBloc>()
                                                          .requestPermission();
                                                  if (isGrantedPermission) {
                                                    checkInCallback();
                                                    Navigator.pop(context);
                                                  }
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        AppColors.brown),
                                                child: const Text(
                                                    'Check Permisssions')),
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            }
                          },
                          child: const Text("Yes")),
                    ],
                  )
                ],
              );
            }) ??
        false;
  }

  void _getUserLocation() async {
    var position = await GeolocatorPlatform.instance.getCurrentPosition(
        locationSettings:
            const LocationSettings(accuracy: LocationAccuracy.best));
    setState(() {
      currentPostion = LatLng(position.latitude, position.longitude);
    });
  }

  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location services are disabled. Please enable the services')));
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location permissions are denied')));
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location permissions are permanently denied, we cannot request permissions.')));
      return false;
    }
    return true;
  }

  Future<void> _getCurrentPosition() async {
    final hasPermission = await _handleLocationPermission();

    if (!hasPermission) return;
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      setState(() => _currentPosition = position);
      setState(() {
        _getAddressFromLatLng(_currentPosition!);
      });
    }).catchError((e) {
      debugPrint(e);
    });
  }

  Future<void> _getAddressFromLatLng(Position position) async {
    await placemarkFromCoordinates(
            _currentPosition!.latitude, _currentPosition!.longitude)
        .then((List<Placemark> placemarks) {
      Placemark place = placemarks[0];
      setState(() {
        _currentAddress =
            '${place.street},${place.subLocality},${place.locality}';
      });
    }).catchError((e) {
      debugPrint(e);
    });
  }

  Future<void> showCheckoutOptionsDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Please upload your image.",
              style: TextStyle(fontSize: 16.dw),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  GestureDetector(
                    child: const Text("Capture Image From Camera"),
                    onTap: () async {

                        final XFile? camera = await _picker.pickImage(
                            source: ImageSource.camera, imageQuality: 20);

                        setState(() {
                          file = camera;
                        });

                      showConfirmationCheckOutDialog();
                      //openCamera();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  Future<void> showCheckInOptionsDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Please upload your image.",
              style: TextStyle(fontSize: 16.dw),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  GestureDetector(
                    child: const Text("Capture Image From Camera"),
                    onTap: () async {
                      showConfirmationDialog();
                      //openCamera();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
