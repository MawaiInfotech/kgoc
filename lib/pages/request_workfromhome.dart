import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:trisquare_locus/utils/screen_size_config.dart';
import '../bloc/applyWfh_bloc.dart';
import '../bloc/requestwfh_bloc.dart';
import '../model/requestwfh_model.dart';
import '../model/wfhcclist_model.dart';
import '../service/wfh_service.dart';
import '../state/apply_wfh_state.dart';
import '../state/requestwfh_state.dart';
import '../themes/app_colors.dart';
import '../widgets/app_top_bar.dart';

class RequestWorkfromHome extends StatefulWidget {
  const RequestWorkfromHome({Key? key}) : super(key: key);

  @override
  State<RequestWorkfromHome> createState() => _RequestWorkfromHomeState();
}

class _RequestWorkfromHomeState extends State<RequestWorkfromHome> {

  TextEditingController reasonTextController = TextEditingController();

  late RequestWfhBloc requestWfhBloc;

  late ApplyWfhBloc applyWfhBloc;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  var applyLeave;
  var workFromHomeType;
  var workFromHomeTypeCode;
  var ccTo;
  var ccToCode;
  var balanceLeave;
  var fromDate = "select Date";
  var toDate = " ";
  var difference;
  var controlCode;
  var contactNumber;
  var appliedTo;

  late DateTimeRange dateTimeRange =
  DateTimeRange(start: DateTime.now(), end: DateTime.now());

  @override
  void initState() {
    final workfromHomeService = Provider.of<WorkfromHomeService>(context, listen:  false);
    requestWfhBloc = RequestWfhBloc(workfromHomeService);
    applyWfhBloc = ApplyWfhBloc(workfromHomeService);
    requestWfhBloc.init();
    super.initState();
  }

  void disposeValues() {
    fromDate = "Select Date";
    toDate = "";
    difference = "";
    workFromHomeType = "Leave Type";
    dateTimeRange = DateTimeRange(start: DateTime.now(), end: DateTime.now());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppTopBar(title: "Workfrom Home"),
      body: SafeArea(
          child: SingleChildScrollView(
      child: _buildBody() ,
          )
      ),
    );
  }

  _buildBody() {
    return BlocConsumer<RequestWfhBloc, RequestWfhState>(
      bloc: requestWfhBloc,
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

  Widget _buildLoading(RequestWfhModel model) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildContent(RequestWfhModel model) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0.dw),
            child: Card(
              elevation: 10,
              color: AppColors.babyPink,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildHeadingText("Workfrom Home For*"),
                      _buildHeadingText("Workfrom Home*"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildWorfromHomeDialogBox(model),
                      _buildWfhTypeDialogBox(model)
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
                  _buildHeadingText("CC To"),
                  _buildCCToDialogBox(model),
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
      padding: EdgeInsets.all(10.0.dw),
      child: Text(
        title,
        style: TextStyle(fontSize: 18.dw, fontWeight: FontWeight.w400),
      ),
    );
  }

  _buildWorfromHomeDialogBox(RequestWfhModel model) {
    return InkWell(
      onTap: () async {
        _showWorkfromHomeDialogue(model);
        disposeValues();
      },
      child: Padding(
        padding: EdgeInsets.all(10.0.dw),
        child: Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(10.0.dw),
            child: Padding(
              padding: EdgeInsets.all(10.dw),
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

  Future<void> _showWorkfromHomeDialogue(RequestWfhModel model) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: SizedBox(
              width: ScreenSizeConfig.getFullWidth,
              height: 200.dh,
              child: ListView.builder(
                  itemCount: model.wfh_day_type.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        applyLeave = model.wfh_day_type[index].meaning;
                        controlCode = model.wfh_day_type[index].controlCode;
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
                            model.wfh_day_type[index].meaning,
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

  _buildWfhTypeDialogBox(RequestWfhModel model) {
    return InkWell(
      onTap: () async {
        _showWfhType(model);
      },
      child: Padding(
        padding: EdgeInsets.all(10.0.dw),
        child: Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(10.0.dw),
            child: Padding(
              padding: EdgeInsets.all(10.dw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(workFromHomeType ?? "Workfrom Home"),
                  const Icon(Icons.arrow_drop_down_outlined)
                ],
              ),
            )),
      ),
    );
  }

  Future<void> _showWfhType(RequestWfhModel model) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: SizedBox(
              width: ScreenSizeConfig.getFullWidth,
              height: 200.dh,
              child: ListView.builder(
                  itemCount: model.wfh_condition.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        workFromHomeType = model.wfh_condition[index].meaning;
                        workFromHomeTypeCode = model.wfh_condition[index].controlCode;
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
                            model.wfh_condition[index].meaning,
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

  _buildCCToDialogBox(RequestWfhModel model) {
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
              padding: EdgeInsets.all(10.dw),
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

  Future<void> _showCCToDialogue(RequestWfhModel model) async {
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
                    child: TextField(
                      onChanged: listNotifier.filterBasedOn,
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
                    child: ValueListenableBuilder<List<WfhCcListModel>>(
                        valueListenable: listNotifier,
                        builder: (context, list, widget) {
                          return ListView.builder(
                              itemCount: list.length,
                              shrinkWrap: true,
                              itemBuilder:
                                  (BuildContext context, int index) {
                                return InkWell(
                                  onTap: () {
                                    ccTo = list[index].name;
                                    ccToCode = list[index].employeeCode;
                                    setState(() {});
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
                                        MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SizedBox(
                                            width: 150.dw,
                                            child: Text(
                                              list[index].name,
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
                                          Text(
                                            "(" +
                                                list[index].employeeCode +
                                                ")",
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

  _border() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.dw),
      borderSide:  const BorderSide(color: AppColors.black));

  _buildElevatedbutton() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10.0.dw),
        child: BlocConsumer<ApplyWfhBloc, ApplyWfhState>(
            bloc: applyWfhBloc,
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
                        backgroundColor: AppColors.portaldarkBlue),
                    onPressed: () {
                      if (fromDate == null && toDate == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Please Select Dates")));
                        return;
                      }

                      _applywfh();
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
                  if (controlCode != null && workFromHomeType != null) {
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
                          fromDate = DateFormat('dd-MM-yyyy').format(pickedDate.start);
                          toDate = DateFormat('dd-MM-yyyy').format(pickedDate.end);
                        } else if (controlCode == "1" || controlCode == "2") {
                          difference = "0.5";
                          fromDate = DateFormat('dd-MM-yyyy').format(pickedDate.start);
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

  void _applywfh() async {
    final data = {
      'wfh_desc': controlCode,
      'wfh_type': "WF",
      'from_date': fromDate,
      'wfh_days': difference.toString(),
      'wfh_reason': reasonTextController.text,
      'cc_to': ccToCode ?? "",
      'end_date': toDate,
      "wfh_condition": workFromHomeTypeCode
    };
    await applyWfhBloc.applyWfh(data);
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


class SearchableListNotifier extends ValueNotifier<List<WfhCcListModel>> {
  SearchableListNotifier(super.value) {
    initialValue = value;
    print("INITIAL VALUE WAS $value");
  }

  late List<WfhCcListModel> initialValue;

  void filterBasedOn(String query) {
    if (query.isEmpty) {
      value = initialValue;
    } else {
      value = initialValue.where((e) => e.name.toLowerCase().startsWith(query)).toList();
    }
    notifyListeners();
  }
}