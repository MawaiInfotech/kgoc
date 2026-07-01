import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:time_range/time_range.dart';
import 'package:trisquare_locus/utils/screen_size_config.dart';
import '../bloc/applyod_bloc.dart';
import '../bloc/request_offduty_bloc.dart';
import '../model/offdutyclientlist_model.dart';
import '../model/requestoffduty_model.dart';
import '../service/login_service.dart';
import '../service/offduty_service.dart';
import '../state/applyod_state.dart';
import '../state/requestoffduty_state.dart';
import '../themes/app_colors.dart';
import '../widgets/app_top_bar.dart';

class RequestOffdutyPage extends StatefulWidget {
  const RequestOffdutyPage({Key? key}) : super(key: key);

  @override
  State<RequestOffdutyPage> createState() => _RequestOffdutyPageState();
}

class _RequestOffdutyPageState extends State<RequestOffdutyPage> {

  TextEditingController reasonTextController = TextEditingController();

  late LoginService loginService;

  late RequestoffdutyModel requestLeaveModel = const RequestoffdutyModel();

  late RequestoffdutyBloc requestoffdutyBloc;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  late DateTimeRange dateTimeRange = DateTimeRange(start: DateTime.now(), end: DateTime.now());

  late ApplyOdBloc applyOdBloc;

  var applyOD;
  var applyOdCode;
  var applyOdIndex = 0;
  var odType;
  var odTypeCode;
  var odTypeCodeIndex;
  var fromDate = "Select Date ";
  var toDate = " ";
  var difference;
  var contactNumber;
  var odFor;
  var odForCode;
  var odForCodeIndex = 0;
  var purpose;
  var purposeCode;
  var purposeCodeIndex = 0;
  var OdStatus;
  var OdStatusCode;
  var OdStatusCodeIndex = 0;
  var clientName;
  var clientCode;
  var fromTime;
  var fromTime1 = "9:30";
  var toTime;
  var toTime1 = "10:30";
  TimeRangeResult? _timeRange;
  TimeRangeResult? _timeRange2;
  final _defaultTimeRange = TimeRangeResult(
    const TimeOfDay(hour: 09, minute: 30),
    const TimeOfDay(hour: 10, minute: 30),
  );

  final _defaultTimeRange2 = TimeRangeResult(
  const TimeOfDay(hour: 09, minute: 30),
  const TimeOfDay(hour: 18, minute: 30)
  );

  @override
  void initState() {
    loginService = Provider.of<LoginService>(context, listen: false);
    final offdutyService = Provider.of<OffdutyService>(context, listen:  false);
    requestoffdutyBloc = RequestoffdutyBloc(loginService, offdutyService);
    requestoffdutyBloc.init();
    applyOdBloc = ApplyOdBloc(offdutyService);
    _timeRange = _defaultTimeRange;
    _timeRange2 = _defaultTimeRange2;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: const AppTopBar(title: "Request Outdoor Duty"),
        body: _buildBody()
    );
  }

  _buildBody() {
    return BlocConsumer<RequestoffdutyBloc, RequestoffdutyState>(
      bloc: requestoffdutyBloc,
      listener: (_, state) {
        applyOD = state.requestoffdutyModel.od_data[0].description;
        applyOdCode = state.requestoffdutyModel.od_data[0].code;
        odType = state.requestoffdutyModel.od_list[0].description;
        odTypeCode = state.requestoffdutyModel.od_list[0].code;
        odFor = state.requestoffdutyModel.od_for[0].description;
        odForCode = state.requestoffdutyModel.od_for[0].code;
        purpose = state.requestoffdutyModel.purpose[0].description;
        purposeCode = state.requestoffdutyModel.purpose[0].code;
        OdStatus = state.requestoffdutyModel.gp_od_status[0].description;
        OdStatusCode = state.requestoffdutyModel.gp_od_status[0].code;
      },
      builder: (_, state) {
        return state.when(
            loading: _buildLoading,
            content: _buildContent,
            success: _buildContent,
            failed: (form, __) => _buildContent(form));
      },
    );
  }

  Widget _buildLoading(RequestoffdutyModel model) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildContent(RequestoffdutyModel model) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0.dw),
            child: Card(
              elevation: 10,
              color: Colors.grey.shade100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildHeadingText("Apply OD For*"),
                      _buildHeadingText("OD Type*"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //_buildTestOdType(model.od_data),
                      _buildApplyODDialogBox(model),
                      _buildODTypeDialogBox(model)
                    ],
                  ),
                  _buildLine(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildHeadingText("From Date"),
                      _buildFromDate()],
                  ),
                  _buildLine(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [_buildHeadingText("To Date"), _buildToDate()],
                  ),
                  // _buildLine(),
                  // if(odType == "1st Half" || odType == "2nd Half") _time(),
                  // if(odType == "Full Day") _FullDaytime(),
                  // _buildLine(),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     _buildHeadingText("Od For"),
                  //     _buildHeadingText("Project"),
                  //   ],
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     _buildODFor(model),
                  //     _buildClientList(model),
                  //   ],
                  // ),
                  _buildLine(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildHeadingText("Purpose"),
                      _buildHeadingText("OD Status"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildPurpose(model),
                      _buildOdStatus(model),
                    ],
                  ),
                  _buildLine(),
                  _buildHeadingText("Applied To"),
                  _buildHeadingText(model.applied_to.employeeFirstName + " " + model.applied_to.employeelastName + " " + "("+ model.applied_to.employeeNumber+ ")"),
                  _buildLine(),
                  _buildHeadingText("Remark*"),
                  _buildTextField(),
                  _buildElevatedbutton()
                ],
              ),
            ),
          ),
        ));
  }

  _buildHeadingText(String title) {
    return Padding(
      padding: EdgeInsets.all(10.0.dw),
      child: Text(
        title,
        style: TextStyle(fontSize: 18.dw, fontWeight: FontWeight.w400),
      ),
    );
  }

  _buildApplyODDialogBox(RequestoffdutyModel model) {

    return InkWell(
      onTap: () async {
        _showApplyLeaveDialogue(model);
      },
      child: Padding(
        padding: EdgeInsets.all(10.0.dw),
        child: Material(
            elevation: 10,
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(10.0.dw),
            child: Padding(
              padding: EdgeInsets.all(10.dw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(applyOD ?? model.od_data[0].description),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
            )),
      ),
    );
  }

  Future<void> _showApplyLeaveDialogue(RequestoffdutyModel model) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: SizedBox(
              width: ScreenSizeConfig.getFullWidth,
              height: 200.dh,
              child: ListView.builder(
                  itemCount: model.od_data.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        applyOD =  model.od_data[index].description;
                        applyOdIndex = index;
                        applyOdCode = model.od_data[applyOdIndex].code;
                        setState(() {});
                        Navigator.pop(context);
                      },
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.dw)),
                        child: Padding(
                          padding: EdgeInsets.all(8.0.dw),
                          child: Text(
                            model.od_data[index].description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.dw,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          );
        }) ??
        false;
  }

  _buildODTypeDialogBox(RequestoffdutyModel model) {

    return InkWell(
      onTap: () async {
        _showODType(model);
      },
      child: Padding(
        padding: EdgeInsets.all(10.0.dw),
        child: Material(
            elevation: 10,
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(10.0.dw),
            child: Padding(
              padding: EdgeInsets.all(10.dw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(odType ?? model.od_list[0].description),
                  const Icon(Icons.arrow_drop_down_outlined)
                ],
              ),
            )),
      ),
    );
  }

  Future<void> _showODType(RequestoffdutyModel model) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: SizedBox(
              width: ScreenSizeConfig.getFullWidth,
              height: 200.dh,
              child: ListView.builder(
                  itemCount: model.od_list.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        odType = model.od_list[index].description;
                        odTypeCodeIndex = index;
                        odTypeCode = model.od_list[odTypeCodeIndex].code;
                        setState(() {});
                        Navigator.pop(context);
                      },
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.dw)),
                        child: Padding(
                          padding: EdgeInsets.all(8.0.dw),
                          child: Text(
                            model.od_list[index].description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.dw,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          );
        }) ??
        false;
  }

  _buildODFor(RequestoffdutyModel model) {
    return InkWell(
      onTap: () async {
        _showODFor(model);
      },
      child: Padding(
        padding: EdgeInsets.all(10.0.dw),
        child: Material(
            elevation: 10,
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(10.0.dw),
            child: Padding(
              padding: EdgeInsets.all(10.dw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(odFor ?? model.od_for[0].description),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
            )),
      ),
    );
  }

  Future<void> _showODFor(RequestoffdutyModel model) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: SizedBox(
              width: ScreenSizeConfig.getFullWidth,
              height: 200.dh,
              child: ListView.builder(
                  itemCount: model.od_for.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        odFor = model.od_for[index].description;
                        odForCodeIndex = index;
                        odForCode = model.od_for[odForCodeIndex].code;
                        setState(() {});
                        Navigator.pop(context);
                      },
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.dw)),
                        child: Padding(
                          padding: EdgeInsets.all(8.0.dw),
                          child: Text(
                            model.od_for[index].description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.dw,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          );
        }) ??
        false;
  }

  _buildPurpose(RequestoffdutyModel model) {
    return InkWell(
      onTap: () async {
        _showPurpose(model);
      },
      child: Padding(
        padding: EdgeInsets.all(10.0.dw),
        child: Material(
            elevation: 10,
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(10.0.dw),
            child: Padding(
              padding: EdgeInsets.all(10.dw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(purpose ?? model.purpose[0].description),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
            )
        ),
      ),
    );
  }

  Future<void> _showPurpose(RequestoffdutyModel model) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: SizedBox(
              width: ScreenSizeConfig.getFullWidth,
              height: 200.dh,
              child: ListView.builder(
                  itemCount: model.purpose.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        purpose = model.purpose[index].description;
                        purposeCodeIndex = index;
                        purposeCode = model.purpose[purposeCodeIndex].code;
                        setState(() {});
                        Navigator.pop(context);
                      },
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.dw)),
                        child: Padding(
                          padding: EdgeInsets.all(8.0.dw),
                          child: Text(
                            model.purpose[index].description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.dw,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          );
        }) ??
        false;
  }

  _buildOdStatus(RequestoffdutyModel model) {
    // if(OdStatus == null){
    //   odStatus1 = model.gp_od_status[0].description;
    //   OdStatus = odStatus1;
    // }
   // OdStatus = model.gp_od_status[0].description;
    //OdStatusCode = model.gp_od_status[0].code;
    return InkWell(
      onTap: () async {
        _showOdStatus(model);
      },
      child: Padding(
        padding: EdgeInsets.all(10.0.dw),
        child: Material(
            elevation: 10,
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(10.0.dw),
            child: Padding(
              padding: EdgeInsets.all(10.dw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(OdStatus ?? model.gp_od_status[0].description),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
            )),
      ),
    );
  }

  Future<void> _showOdStatus(RequestoffdutyModel model) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: SizedBox(
              width: ScreenSizeConfig.getFullWidth,
              height: 200.dh,
              child: ListView.builder(
                  itemCount: model.gp_od_status.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        OdStatus = model.gp_od_status[index].description;
                        OdStatusCodeIndex = index;
                        OdStatusCode = model.gp_od_status[OdStatusCodeIndex].code;
                        setState(() {});
                        Navigator.pop(context);
                       // requestoffdutyBloc.init();
                      },
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.dw)),
                        child: Padding(
                          padding: EdgeInsets.all(8.0.dw),
                          child: Text(
                            model.gp_od_status[index].description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.dw,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          );
        }) ??
        false;
  }

  _buildClientList(RequestoffdutyModel model) {
    return InkWell(
      onTap: () async {
        _showClient(model);
      },
      child: Padding(
        padding: EdgeInsets.all(10.0.dw),
        child: Material(
            elevation: 10,
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(10.0.dw),
            child: Padding(
              padding: EdgeInsets.all(10.dw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(clientName ?? "Project",),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
            )),
      ),
    );
  }

  Future<void> _showClient(RequestoffdutyModel model) async {
    final listNotifier = SearchableListNotifier(model.org_list);
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: SizedBox(
              width: ScreenSizeConfig.getFullWidth,
              height: 400.dh,
              child: Column(
                children: [
                  SizedBox(
                    height: 50.dw,
                    child: TextField(onChanged: listNotifier.filterBasedOn,
                      decoration: InputDecoration(
                          border: _border(),
                          focusedBorder: _border(),
                          disabledBorder: _border(),
                          hintText: "Search",
                          contentPadding: EdgeInsets.all(5.dw),
                          prefixIcon: const Icon(Icons.search)
                      ),
                    ),
                  ),
                  Expanded(
                    child: ValueListenableBuilder<List<OffdutyClientListModel>>(
                        valueListenable: listNotifier,
                        builder: (context, list, widget) {
                          return ListView.builder(
                              itemCount: list.length,
                              shrinkWrap: true,
                              itemBuilder:
                                  (BuildContext context, int index) {
                                return InkWell(
                                  onTap: () {
                                    clientName = list[index].clientName;
                                    clientCode = list[index].clientCode;
                                    setState(() {});
                                    Navigator.pop(context);
                                  },
                                  child: Card(
                                    elevation: 2.dw,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.dw),
                                        side: const BorderSide(color: AppColors.black)
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0.dw),
                                      child: SizedBox(
                                        width: 150.dw,
                                        child: Text(
                                          list[index].clientName,
                                          textAlign: TextAlign.center,
                                          maxLines: 2,
                                          overflow:
                                          TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 18.dw,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              });
                        }),
                  ),
                ],
              ),
            ),
          );
        }) ??
        false;
  }

  _buildTextField() {
    return Padding(
      padding: EdgeInsets.only(left: 8.dw, right: 8.dw),
      child: TextField(
        controller: reasonTextController,
        decoration: const InputDecoration(hintText: "Reason"),
      ),
    );
  }

  Widget _buildFromDate() {
    return Padding(
      padding: EdgeInsets.all(8.dh),
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.all(8.dw),
              height: 50.dh,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: AppColors.navyblue),
                      top: BorderSide(color: AppColors.navyblue),
                      left: BorderSide(color: AppColors.navyblue),
                      right: BorderSide(color: AppColors.navyblue)),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white),
              child: InkWell(
                onTap: (){
                    showDateRangePicker(
                        context: context,
                        builder: (context, child) {
                          return Theme(
                            data: Theme.of(context).copyWith(
                              colorScheme: const ColorScheme.light(
                                primary: Colors.blue,
                                onPrimary: Colors.white,
                                onSurface: Colors.black,
                              ),
                              textButtonTheme: TextButtonThemeData(
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.white, backgroundColor: AppColors.brown,
                                  textStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.black
                                  ),
                                ),
                              ),
                            ),
                            child: child!,
                          );
                        },
                        helpText: 'Select Date',
                        initialEntryMode: DatePickerEntryMode.calendarOnly,
                        firstDate: DateTime.now().subtract(const Duration(days: 90)),
                        lastDate: DateTime.now().add(const Duration(days: 365)),
                        errorFormatText: "Invalid Format",
                        errorInvalidRangeText: "Invalid Range",
                        fieldStartHintText: "Start Date",
                        fieldEndHintText: "End Date"
                    ).then((pickedDate) {
                      if (pickedDate == null) {
                        return;
                      }
                      setState(() {
                        dateTimeRange = pickedDate;
                        if(odTypeCode == "3"){
                          difference = pickedDate.end.difference(pickedDate.start).inDays + 1;
                          fromDate =  DateFormat('dd-MM-yyyy').format(pickedDate.start);
                          toDate = DateFormat('dd-MM-yyyy').format(pickedDate.end);
                        }else if(odTypeCode == "1" || odTypeCode == "2"){
                          difference = "0.5";
                          fromDate =  DateFormat('dd-MM-yyyy').format(pickedDate.start);
                          toDate = fromDate;
                        }
                        setState(() {});
                      });
                    });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/from_date.png",
                      scale: 2,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.dw),
                      child: Text(fromDate.toString() ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  _buildToDate() {
    return Padding(
      padding: EdgeInsets.all(8.dh),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8.dw),
            height: 50.dh,
            width: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: AppColors.navyblue),
                    top: BorderSide(color: AppColors.navyblue),
                    left: BorderSide(color: AppColors.navyblue),
                    right: BorderSide(color: AppColors.navyblue)),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/from_date.png",
                  scale: 2.dw,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.dw),
                  child: Text(applyOdCode == "P" ? fromDate.toString() : toDate.toString()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildElevatedbutton() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10.0.dw),
        child: BlocConsumer<ApplyOdBloc, ApplyOdState>(
            bloc: applyOdBloc,
            listener: (_, state){
              state.maybeWhen(
                  success: (_, message){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message?? "Od Applies Successfully")));
                    Navigator.pop(context, true);
                    // Navigator.pushNamed(context, AppRoutes.onDutyPage).then((value) => setState((){}));
                  },
                  failed: (_, message){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
                  }, orElse:(){});
            },
            builder: (context, state) {
              return state.maybeWhen(
                  loading: (_){
                    return const CircularProgressIndicator();
                  },
                  orElse: (){return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.portalgreyBlue
                      ),
                      onPressed: () {
                        _applyOD();
                      },
                      child: const Text("Submit"));});

            }
        ),
      ),
    );
  }

  void _applyOD() async {
    if(fromTime == null ){
      fromTime = fromTime1;
      toTime = toTime1;
    }
    final data = {
      'emp_cd': loginService.getUserCode,
      'unit_cd': loginService.getCurrentUser!.unit_cd,
      'od_starts_from': applyOdCode,
      'od_list': odTypeCode,
     // 'od_date': fromDate + " "+fromTime.toString(),
      'od_date': fromDate,
     // 'od_end_date': toDate +" "+ toTime.toString(),
      'od_end_date': toDate,
      'gp_od_status': "P",
      'name_of_org': "O",
      'remarks': reasonTextController.text,
      'purpose': purposeCode,
    };
    await applyOdBloc.applyOd(data);
  }

  _buildLine() {
    return Padding(
      padding: EdgeInsets.all(2.0.dw),
      child: Container(
        height: 1.0,
        width: ScreenSizeConfig.getFullWidth,
        color: AppColors.black,
      ),
    );
  }

  _time(){
    return TimeRange(
      fromTitle: Text(
        'FROM',
        style: TextStyle(
          fontSize: 14.dw,
          color: AppColors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
      toTitle: Text(
        'TO',
        style: TextStyle(
          fontSize: 14.dw,
          color: AppColors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
      titlePadding: 10.dw,
      textStyle: const TextStyle(
        fontWeight: FontWeight.normal,
        color: AppColors.black,
      ),
      activeTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: AppColors.red,
      ),
      borderColor: AppColors.black,
      activeBorderColor: AppColors.orange2,
      backgroundColor: Colors.transparent,
      activeBackgroundColor: AppColors.white,
      firstTime: const TimeOfDay(hour: 8, minute: 00),
      lastTime: const TimeOfDay(hour: 23, minute: 59),
      initialRange: _timeRange,
      timeStep: 5,
      timeBlock: 10,
      onRangeCompleted: (range){
        setState(() => _timeRange = range);
        fromTime = _timeRange?.start.format(context);
        toTime = _timeRange?.end.format(context);
      },
    );
  }

  _FullDaytime(){
    return TimeRange(
      fromTitle: Text(
        'FROM',
        style: TextStyle(
          fontSize: 14.dw,
          color: AppColors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
      toTitle: Text(
        'TO',
        style: TextStyle(
          fontSize: 14.dw,
          color: AppColors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
      titlePadding: 10.dw,
      textStyle: const TextStyle(
        fontWeight: FontWeight.normal,
        color: AppColors.black,
      ),
      activeTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: AppColors.red,
      ),
      borderColor: AppColors.black,
      activeBorderColor: AppColors.orange2,
      backgroundColor: Colors.transparent,
      activeBackgroundColor: AppColors.white,
      firstTime: const TimeOfDay(hour: 8, minute: 00),
      lastTime: const TimeOfDay(hour: 23, minute: 59),
      initialRange: _timeRange2,
      timeStep: 5,
      timeBlock: 10,
      onRangeCompleted: (range){
        setState(() => _timeRange2 = range);
        fromTime = _timeRange2?.start.format(context);
        toTime = _timeRange2?.end.format(context);
      },
    );
  }

  _border() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.dw),
      borderSide:  const BorderSide(color: AppColors.black));

}


class SearchableListNotifier extends ValueNotifier<List<OffdutyClientListModel>> {
  SearchableListNotifier(super.value) {
    initialValue = value;
    print("INITIAL VALUE WAS $value");
  }

  late List<OffdutyClientListModel> initialValue;

  void filterBasedOn(String query) {
    if (query.isEmpty) {
      value = initialValue;
    } else {
      value = initialValue
          .where((e) => e.clientName.toLowerCase().startsWith(query))
          .toList();
    }
    notifyListeners();
  }
}
