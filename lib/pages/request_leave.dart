import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:trisquare_locus/model/colist_model.dart';
import 'package:trisquare_locus/utils/screen_size_config.dart';
import '../bloc/applyleave_bloc.dart';
import '../bloc/request_leave_bloc.dart';
import '../model/cc_list_model.dart';
import '../model/requestleave_model.dart';
import '../service/leave_service.dart';
import '../service/login_service.dart';
import '../state/applyleave_state.dart';
import '../state/request_leave_state.dart';
import '../themes/app_colors.dart';
import '../widgets/app_top_bar.dart';

class RequestLeave extends StatefulWidget {
  const RequestLeave({Key? key}) : super(key: key);

  @override
  State<RequestLeave> createState() => _RequestLeaveState();
}

class _RequestLeaveState extends State<RequestLeave> {

  TextEditingController reasonTextController = TextEditingController();

  TextEditingController numberOfHoursController = TextEditingController();

  late RequestLeaveBloc requestLeaveBloc;

  late ApplyyLeaveBloc applyyLeaveBloc;

  late LoginService loginService;

  late RequestLeaveModel requestLeaveModel = const RequestLeaveModel();

  final scaffoldKey = GlobalKey<ScaffoldState>();

  var applyLeave;
  var leavetype;
  var ccTo;
  var ccToCode;
  var balanceLeave;
  var leaveCode;
  var fromDate = "select Date";
  var toDate = " ";
  var compansatoryOffFrom = "select Date";
  var difference;
  var controlCode;
  var contactNumber;
  var appliedTo;
  var coDescription;
  var coTotalTime;
  var coListTime;

  late DateTimeRange dateTimeRange = DateTimeRange(start: DateTime.now(), end: DateTime.now());

  @override
  void initState() {
    final leaveService = Provider.of<LeaveService>(context, listen: false);
    loginService = Provider.of<LoginService>(context, listen: false);
    requestLeaveBloc = RequestLeaveBloc(loginService, leaveService);
    applyyLeaveBloc = ApplyyLeaveBloc(leaveService);
    requestLeaveBloc.init();
    super.initState();
  }

  void disposeValues() {
    fromDate = "Select Date";
    toDate = "";
    difference = "";
    leavetype = "Leave Type";
    dateTimeRange = DateTimeRange(start: DateTime.now(), end: DateTime.now());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: const AppTopBar(title: "Request Leave"),
        body: _buildBody());
  }

  _buildBody() {
    return BlocConsumer<RequestLeaveBloc, RequestLeaveState>(
      bloc: requestLeaveBloc,
      listener: (_, state) {},
      builder: (_, state) {
        return state.when(
            loading: _buildLoading,
            content: _buildContent,
            success: _buildContent,
            failed: (form, __) => _buildContent(form));
      },
    );
  }

  Widget _buildLoading(RequestLeaveModel model) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildContent(RequestLeaveModel model) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10.0.dw),
        child: Card(
          elevation: 10,
          color: AppColors.brown,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildHeadingText("Apply Leave For*"),
                  _buildHeadingText("Leave Type*"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildApplyLeaveDialogBox(model),
                  _buildLeaveTypeDialogBox(model)
                ],
              ),
              _buildLine(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [_buildHeadingText("From Date"), _buildFromDate()],
              ),
              _buildLine(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [_buildHeadingText("To Date"), _buildToDate()],
              ),
              _buildLine(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildHeadingText("Days   :-"),
                      _buildText(difference.toString()),
                    ],
                  ),
                  Row(
                    children: [
                      _buildHeadingText("Balance :-"),
                      _buildText(balanceLeave ?? "0")
                    ],
                  )
                ],
              ),
              _buildLine(),
              _buildHeadingText("Applied To"),
              if (model.reporting_to.isEmpty) const Text(""),
              if (model.reporting_to.isNotEmpty)
                _buildText(appliedTo = ("${model.reporting_to[0].employeeFirstName} ${model.reporting_to[0].employeeLastName} - (${model.reporting_to[0].employeeNumber})")),
              _buildLine(),
              _buildHeadingText("CC To"),
              _buildCCToDialogBox(model),
              if(leaveCode == "CO")
                Row
                  (mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: [
                    _buildHeadingText("Compansatory To"),
                    _buildHeadingText("Work Hrs(CO)"),
                  ],
                ),
              if(leaveCode == "CO" && model.coParameter == "A")  _buildCoDialogBox(model),
              if(leaveCode == "CO" && model.coParameter == "M")
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: [
                    _buildCompansatoryOffFrom(),
                    _buildCompansatoryTextField()
                  ],
                ),
              _buildLine(),
              _buildHeadingText("Reason*"),
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
      padding: EdgeInsets.all(8.0.dw),
      child: Text(
        title,
        style: TextStyle(fontSize: 16.dw, fontWeight: FontWeight.w400),
      ),
    );
  }

  _buildApplyLeaveDialogBox(RequestLeaveModel model) {
    return InkWell(
      onTap: () async {
        _showApplyLeaveDialogue(model);
        disposeValues();
      },
      child: Padding(
        padding: EdgeInsets.all(8.0.dw),
        child: Material(
            elevation: 10.dw,
            borderRadius: BorderRadius.circular(10.0.dw),
            child: Padding(
              padding: EdgeInsets.all(8.dw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(applyLeave ?? "Apply"),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
            )),
      ),
    );
  }

  Future<void> _showApplyLeaveDialogue(RequestLeaveModel model) async {
    await showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: SizedBox(
                  width: ScreenSizeConfig.getFullWidth,
                  height: 160.dh,
                  child: ListView.builder(
                      itemCount: model.leave_type.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            requestLeaveBloc.init();
                            applyLeave = model.leave_type[index].meaning;
                            controlCode = model.leave_type[index].controlCode;
                            if (controlCode == "1" || controlCode == "2") {
                              difference = "0.5";
                            } else if (controlCode == "3") {
                              difference = dateTimeRange.end
                                      .difference(dateTimeRange.start)
                                      .inDays +
                                  1;
                            }

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
                                model.leave_type[index].meaning,
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

  _buildLeaveTypeDialogBox(RequestLeaveModel model) {
    return InkWell(
      onTap: () async {
        _showLeaveType(model);
      },
      child: Padding(
        padding: EdgeInsets.all(8.0.dw),
        child: Material(
            elevation: 10.dw,
            borderRadius: BorderRadius.circular(10.0.dw),
            child: Padding(
              padding: EdgeInsets.all(8.dw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(leavetype ?? "Leave Type"),
                  const Icon(Icons.arrow_drop_down_outlined)
                ],
              ),
            )),
      ),
    );
  }

  Future<void> _showLeaveType(RequestLeaveModel model) async {
    await showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: SizedBox(
                  width: ScreenSizeConfig.getFullWidth,
                  height: 200.dw,
                  child: ListView.builder(
                      itemCount: model.leave_list.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            requestLeaveBloc.init();
                            leavetype = model.leave_list[index].description;
                            leaveCode = model.leave_list[index].code;
                            balanceLeave = model.leave_list[index].leaveBalance;
                            Navigator.pop(context);
                          },
                          child: Card(
                            elevation: 10.dw,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.dw)),
                            child: Padding(
                              padding: EdgeInsets.all(10.0.dw),
                              child: Text(
                                model.leave_list[index].description,
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

  _buildText(String title) {
    return Padding(
      padding: EdgeInsets.all(8.dw),
      child: Text(
        title,
        style: TextStyle(fontSize: 16.dw, fontWeight: FontWeight.w400),
      ),
    );
  }

  _buildCCToDialogBox(RequestLeaveModel model) {
    return InkWell(
      onTap: () async {
        _showCCToDialogue(model);
      },
      child: Padding(
        padding: EdgeInsets.all(8.0.dw),
        child: Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(10.0.dw),
            child: Padding(
              padding: EdgeInsets.all(8.dw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(ccTo ?? "CC To"),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
            )),
      ),
    );
  }

  Future<void> _showCCToDialogue(RequestLeaveModel model) async {
    final listNotifier = SearchableListNotifier(model.cc_list);
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
                        child: ValueListenableBuilder<List<CClistModel>>(
                            valueListenable: listNotifier,
                            builder: (context, list, widget) {
                              return ListView.builder(
                                  itemCount: list.length,
                                  shrinkWrap: true,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return InkWell(
                                      onTap: () {
                                        requestLeaveBloc.init();
                                        ccTo = list[index].employeeFirstName;
                                        ccToCode = list[index].employeeCode;
                                        Navigator.pop(context);
                                      },
                                      child: Card(
                                        elevation: 2.dw,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.dw),
                                        side: BorderSide(color: AppColors.black)
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0.dw),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: 150.dw,
                                                child: Text(
                                                  list[index].employeeFirstName,
                                                  textAlign: TextAlign.center,
                                                  maxLines: 3,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    fontSize: 16.dw,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                "(" +
                                                    list[index].employeeCode +
                                                    ")",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 14.dw,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
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

  _buildCoDialogBox(RequestLeaveModel model) {
    return InkWell(
      onTap: () async {
        _showCoDialogue(model);
      },
      child: Padding(
        padding: EdgeInsets.all(8.0.dw),
        child: Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(10.0.dw),
            child: Padding(
              padding: EdgeInsets.all(8.dw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(coDescription ?? "Compensatory To"),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
            )),
      ),
    );
  }

  Future<void> _showCoDialogue(RequestLeaveModel model) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: SizedBox(
              width: ScreenSizeConfig.getFullWidth,
              height: 200.dw,
              child: ListView.builder(
                  itemCount: model.co_list.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        requestLeaveBloc.init();
                        coDescription = model.co_list[index].description;
                        compansatoryOffFrom = model.co_list[index].holiday;
                        coListTime = model.co_list[index].totalTime;
                        Navigator.pop(context);
                      },
                      child: Card(
                        elevation: 10.dw,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.dw)),
                        child: Padding(
                          padding: EdgeInsets.all(10.0.dw),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Text(
                                model.co_list[index].holiday,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18.dw,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                model.co_list[index].totalTime,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18.dw,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
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

  _buildTextField() {
    return Padding(
      padding: EdgeInsets.only(left: 8.dw, right: 8.dw),
      child: TextField(
        controller: reasonTextController,
        decoration: const InputDecoration(hintText: "Reason"),
      ),
    );
  }

  _border() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.dw),
      borderSide:  const BorderSide(color: AppColors.black));

  _buildElevatedbutton() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10.0.dw),
        child: BlocConsumer<ApplyyLeaveBloc, ApplyyLeaveState>(
            bloc: applyyLeaveBloc,
            listener: (_, state) {
              state.maybeWhen(
                  success: (_, message) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(message ?? "Something")));
                    Navigator.pop(context, true);
                    // Navigator.pushNamed(context, AppRoutes.leaveApply);
                  },
                  failed: (_, message) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(message)));
                  },
                  orElse: () {});
            },
            builder: (context, state) {
              return state.maybeWhen(loading: (_) {
                return const CircularProgressIndicator();
              }, orElse: () {
                return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.portalgreyBlue),
                    onPressed: () {
                      if (fromDate == null && toDate == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Please Select Dates")));
                        return;
                      }

                      _applyLeave();
                    },
                    child: const Text("Submit"));
              });
            }),
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
                onTap: () {
                  if (controlCode != null && leavetype != null) {
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
                                          color: AppColors.black),
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
                            fieldEndHintText: "End Date")
                        .then((pickedDate) {
                      if (pickedDate == null) {
                        return;
                      }
                      setState(() {
                        dateTimeRange = pickedDate;
                        if (controlCode == "3") {
                          difference = pickedDate.end
                                  .difference(pickedDate.start)
                                  .inDays +
                              1;
                          fromDate =
                              DateFormat('dd-MM-yyyy').format(pickedDate.start);
                          toDate =
                              DateFormat('dd-MM-yyyy').format(pickedDate.end);
                        } else if (controlCode == "1" || controlCode == "2") {
                          difference = "0.5";
                          fromDate =
                              DateFormat('dd-MM-yyyy').format(pickedDate.start);
                          toDate = fromDate;
                        }
                        setState(() {});
                      });
                    });
                  } else {
                    (ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: const Text(
                            "Please select apply leave for and leave type."))));
                  }
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
                      child: Text(fromDate.toString()),
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
                  child: Text(controlCode == "1" || controlCode == "2"
                      ? fromDate.toString()
                      : toDate.toString()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCompansatoryOffFrom() {
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
                onTap: ()async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2100));

                  if (pickedDate != null) {
                    print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                    String formattedDate =
                    DateFormat('dd-MM-yyyy').format(pickedDate);
                    print(formattedDate); //formatted date output using intl package =>  2021-03-16
                    setState(() {
                      compansatoryOffFrom = formattedDate; //set output date to TextField value.
                    });
                  } else {}
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
                      child: Text(compansatoryOffFrom.toString()),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  _buildCompansatoryTextField() {
    return Padding(
      padding: EdgeInsets.only(left: 8.dw, right: 8.dw),
      child: SizedBox(
        width: 80.dw,
        child: TextField(
          controller: numberOfHoursController,
          decoration: const InputDecoration(hintText: "Work Hrs."),
        ),
      ),
    );
  }


  void _applyLeave() async {
    final data = {
      'emp_cd': loginService.getUserCode,
      'unit_cd': loginService.getCurrentUser!.unit_cd,
      'apply_leave_for': controlCode,
      'leave_type': leaveCode,
      'from_date': fromDate,
      'to_date': toDate,
      'leave_days': difference.toString(),
      'balance_leave': balanceLeave,
      'cc_to': ccToCode ?? "",
      'contact_no': contactNumber,
      'fin_year': loginService.getCurrentUser!.default_fin_year,
      'reasons': reasonTextController.text,
      'applied_to': appliedTo,
      'co_date': compansatoryOffFrom == "select Date" ? coListTime : compansatoryOffFrom ,
      'co_hours': numberOfHoursController.text.isEmpty ? coTotalTime : numberOfHoursController.text
    };
    await applyyLeaveBloc.applyLeave(data);
  }

  _buildLine() {
    return Padding(
      padding: EdgeInsets.all(8.0.dw),
      child: Container(
        height: 1.0,
        width: ScreenSizeConfig.getFullWidth,
        color: AppColors.black,
      ),
    );
  }
}

class SearchableListNotifier extends ValueNotifier<List<CClistModel>> {
  SearchableListNotifier(super.value) {
    initialValue = value;
    print("INITIAL VALUE WAS $value");
  }

  late List<CClistModel> initialValue;

  void filterBasedOn(String query) {
    if (query.isEmpty) {
      value = initialValue;
    } else {
      value = initialValue
          .where((e) => e.employeeFirstName.toLowerCase().startsWith(query))
          .toList();
    }
    notifyListeners();
  }
}
