import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../bloc/checkLoginBloc.dart';
import '../bloc/dummyattendance_bloc.dart';
import '../bloc/dummylocationlist_bloc.dart';
import '../model/dummylocationlist_model.dart';
import '../model/login_model.dart';
import '../service/dummysignup_service.dart';
import '../service/login_service.dart';
import '../state/dummyattendance_state.dart';
import '../state/dummylocationlist_state.dart';
import '../themes/app_colors.dart';
import '../utils/screen_size_config.dart';
import '../widgets/app_top_bar.dart';

class DummyAttendancePage extends StatefulWidget {
  const DummyAttendancePage({Key? key}) : super(key: key);

  @override
  State<DummyAttendancePage> createState() => _DummyAttendancePageState();
}

class _DummyAttendancePageState extends State<DummyAttendancePage> {

  late LatLng currentPostion;

  final focusNode = FocusNode();

  String? _currentAddress;

  Position? _currentPosition;

  late Timer timer;

  final secondNotifier = ValueNotifier<int>(0);

  late final DummyLocationlistBloc dummyLocationlistBloc;
  
  late final DummyAttendanceBloc dummyAttendanceBloc;

  late final LoginModel loginModel;

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
  void initState() {
    loginModel = Provider.of<LoginService>(context, listen: false).getCurrentUser!;
    final dummySignupService = Provider.of<DummySignupService>(context, listen: false);
    dummyLocationlistBloc = DummyLocationlistBloc(dummySignupService);
    dummyAttendanceBloc = DummyAttendanceBloc(dummySignupService);
    dummyLocationlistBloc.init();
    _getCurrentPosition();
    initTimer();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppTopBar(title: "Get Location"),
      body: SafeArea(child: _buildBody()),
    );
  }

  _buildBody(){
    return BlocConsumer<DummyLocationlistBloc, DummyLocationlistState>(
      bloc: dummyLocationlistBloc,
      listener: (_, state){},
      builder: (_, state){
        return state.when(
            loading: _buildLoading,
            content: _buildContent,
            success: _buildContent,
            failed: (form, __) => _buildContent(form));
      },
    );
  }

  Widget _buildLoading(List<DummyLocationlistModel> model){
    return const Center(child:  CircularProgressIndicator());
  }

  Widget _buildContent(List<DummyLocationlistModel> model) {
    return SizedBox(
      height: ScreenSizeConfig.getFullHeight,
      child: Column(
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
          _buildCheckOutButton(title: "Mark My Location"),
          _buildDeleteAccount("Delete Account"),
          _buildCheckinCard(model),
        ],
      ),
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
                  title: "${loginModel.emp_first_name!} ${loginModel.emp_last_name!} - ${loginModel.emp_cd!}"),
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

  Widget _buildCheckinCard(List<DummyLocationlistModel> dummylocationList) {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        children: dummylocationList.map((model) => _buildListCard(model)).toList(),
      ),
    );
  }

 Widget _buildListCard(DummyLocationlistModel model){
    return Card(
        color: Colors.grey.shade50,
        elevation: 10,
        margin: EdgeInsets.only(left: 10.dw, right: 10.dw, bottom: 10.dw),
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.dw)),
        child: Column(
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
                "Get Your Location",
                style:
                TextStyle(fontWeight: FontWeight.w400, fontSize: 16.dw),
                textAlign: TextAlign.center,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 10.dw, right: 10.dw, bottom: 5.dw),
                  child: Text(
                    model.address == null ?
                    " Please click on button"
                        : "Address  : ${model.address}",
                    style: TextStyle(fontSize: 16.dw),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            )

          ],
        )
    );
  }

  _buildCheckOutButton({required String title}) {
    return Padding(
      padding: EdgeInsets.all(20.dw),
      child: SizedBox(
        width: ScreenSizeConfig.getFullWidth / 1.1,
        child: BlocConsumer<DummyAttendanceBloc, DummyAttendanceState>(
          bloc: dummyAttendanceBloc,
          listener: (_, state){
            state.maybeWhen(
                success: (_, message){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message??"Something")));
                  // Navigator.pop(context);
                },
                failed: (_, message){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
                }, orElse:(){});
          },
          builder: (BuildContext context, state){
            return ElevatedButton(
                onPressed: () async {
                  await dummyAttendanceBloc.applyAttendance();
                  dummyLocationlistBloc.init();
                  // showConfirmationCheckOutDialog();
                },
                style: ElevatedButton.styleFrom(
                    elevation: 10.dw,
                    backgroundColor:
                    AppColors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.dw))),
                child: Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 18.dh, fontWeight: FontWeight.w600),
                ));
          },
        ),
      ),
    );
  }

  Future<bool> showConfirmationCheckOutDialog() async {
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
                        //  checkInCallback();
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
                                               // checkInCallback();
                                                Navigator.pop(context);
                                              }
                                            },
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: AppColors.brown),
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

      print(_getAddressFromLatLng(position));
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
        print(_currentAddress);
      });
    }).catchError((e) {
      debugPrint(e);
    });
  }

  _buildDeleteAccount(String title){
    return Padding(
      padding: EdgeInsets.only(top: 2.dw,bottom: 8.dw),
      child: SizedBox(
        width: ScreenSizeConfig.getFullWidth / 1.1,
        child: ElevatedButton(
            onPressed: () async {showDeleteDialog();},
            style: ElevatedButton.styleFrom(
                elevation: 10.dw,
                backgroundColor:
                AppColors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.dw))),
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 18.dh, fontWeight: FontWeight.w600),
            ))
      ),
    );
  }

  Future<bool> showDeleteDialog() async {
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: const Text("Are you sure you want to Delete your Account ?"),
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
                        showDeleteDataDialog();},
                      child: const Text("Yes")),
                ],
              )
            ],
          );
        }) ??
        false;
  }

  Future<bool> showDeleteDataDialog() async {
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: SizedBox(
              height: 200.dh,
              child: Column(
                children: const [
                  Text("Are you sure you want to permanently delete your account?",style: TextStyle(fontWeight: FontWeight.w600),),
                  Text("This cannot be undone.\nBy deleting account you will loose your all data and you will not be able to use this username."),
                ],
              ),
            ),
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
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Your Account will be deleted in 3 days")));
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      child: const Text("OK")),
                ],
              )
            ],
          );
        }) ??
        false;
  }

}
