import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:trisquare_locus/utils/screen_size_config.dart';
import '../bloc/teamattendance_bloc.dart';
import '../bloc/teamleader_attendanceapprove_bloc.dart';
import '../bloc/teamleader_attendanceapproverejection_bloc.dart';
import '../model/teamattendance_model.dart';
import '../model/teamattendance_supp_model.dart';
import '../model/teamleader_attendanceApprove_model.dart';
import '../service/attendance_service.dart';
import '../service/login_service.dart';
import '../state/teamattendance_approval_state.dart';
import '../state/teamattendance_state.dart';
import '../themes/app_colors.dart';
import '../widgets/app_top_bar.dart';

class TeamAttendancePage extends StatefulWidget {
  const TeamAttendancePage({Key? key}) : super(key: key);

  @override
  State<TeamAttendancePage> createState() => _TeamAttendancePageState();
}

class _TeamAttendancePageState extends State<TeamAttendancePage> with SingleTickerProviderStateMixin{

  late TabController tabController;

  late PageController pageController;

  int currentPage = 0;

  void initState() {
    tabController = TabController(length: 2, vsync: this);
    pageController =
        PageController(initialPage: currentPage, viewportFraction: 0.8);
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page!;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
    pageController.dispose();
  }

  PageController controller = PageController(viewportFraction: 0.9);
  var currentPageValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: const AppTopBar(title: "Miss - Punch Approval"),
        bottomNavigationBar: BottomAppBar(
          child:  SizedBox(
            height: 100.dh,
            child: TabBar(
              controller: tabController,
              indicatorColor: AppColors.navyblue,
              indicatorWeight: 4.dw,
              labelColor: AppColors.bloodred,
              unselectedLabelColor: AppColors.navyblue,
              unselectedLabelStyle: TextStyle(fontSize: 14.dw),
              indicatorPadding: EdgeInsets.all(8.dw),
              labelPadding: EdgeInsets.all(8.dw),
              labelStyle: TextStyle(fontSize: 16.dw, fontWeight: FontWeight.w500),
              tabs: [
                // Column(
                //   children: [
                //     Image.asset(
                //       "assets/images/team.png",
                //       scale: 15.dw,
                //     ),
                //     const Text("Team Attendance"),
                //   ],
                // ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/approve_attendance.png",
                      scale: 16.dw,
                    ),
                    const Text("Approval Request"),
                  ],
                ),
              ],
            ),
          ) ,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  child: TabBarView(controller: tabController, children: const [
                   // TeamAttendancePageDetail(),
                    ApproveRequest(),
                  ]))
            ],
          ),
        )
    );
  }
}


class TeamAttendancePageDetail extends StatefulWidget {
  const TeamAttendancePageDetail({Key? key}) : super(key: key);

  @override
  State<TeamAttendancePageDetail> createState() => _TeamAttendancePageDetailState();
}

class _TeamAttendancePageDetailState extends State<TeamAttendancePageDetail> {

  late final TeamAttendanceBloc teamAttendanceBloc;

  var employeeCode = "";
  var selectedMonth = "";
  var employeename ="";

  @override
  void initState(){
    final attendanceService = Provider.of<AttendanceService>(context, listen: false);
    teamAttendanceBloc = TeamAttendanceBloc(attendanceService);
    teamAttendanceBloc.init(employeeCode, selectedMonth);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_buildBody()
    );
  }

  _buildBody(){
    return BlocConsumer<TeamAttendanceBloc, TeamAttendanceState>(
      bloc: teamAttendanceBloc,
      listener: (_, state){},
      builder: (_, state){
        return state.when(
            loading: _buildLoading,
            content: _buildContent,
            success: _buildContent,
            failed: (form,) => _buildContent(form));
      },
    );
  }

  Widget _buildLoading(TeamAttendanceSuppModel model){
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildContent(TeamAttendanceSuppModel model){
    return Column(
      children: [
        Row(
          children: [
            _buildMonthDialogBox(model),
            _buildEmployeeDialogBox(model)
          ],
        ),
       _buildList(model)
      ],
    );
  }

    Widget _buildList(TeamAttendanceSuppModel teamattendeanceList){
    return  Expanded(
      child: ListView(
        shrinkWrap: true,
        children: teamattendeanceList.team_atten.map((model) => _buildListCard(model)).toList(),
      ),
    );
  }

  Widget _buildListCard(TeamAttendanceModel model ){
    return Card(
        margin: EdgeInsets.all(10.dw),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.dw)),
        elevation: 10.dw,
        child: Column(
          children: [
            _buildDate(model),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildHeadingText("Employee Code"),
                _buildColonText(),
                _buildText(model.employeeNumber)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildHeadingText("First Check- In"),
                _buildColonText(),
                _buildText(model.inTime)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildHeadingText("Last Check- Out"),
                _buildColonText(),
                _buildText(model.outTime)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildHeadingText("Check- In Address"),
                _buildColonText(),
                _buildText(model.inAddress)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildHeadingText("Check- Out Address"),
                _buildColonText(),
                _buildText(model.outAddress)
              ],
            ),

          ],
        ));
  }

  _buildHeadingText(String title){
    return Container(
        width: 180.dw,
        margin: EdgeInsets.all(4.dw),
        child: Text(title,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16.dw),));
  }

  _buildText(String title){
    return Container(
        width: 180.dw,
        margin: EdgeInsets.all(5.dw),
        child: Text(title,
          maxLines: 2,
          style: TextStyle(fontSize: 16.dw),));
  }

  _buildColonText(){
    return Text(":",
      style: TextStyle(fontSize: 14.dw,
        fontWeight: FontWeight.w800,color: AppColors.black),);
  }

  _buildDate(TeamAttendanceModel model){
    return Container(
      width: ScreenSizeConfig.getFullWidth,
      decoration: BoxDecoration(
          color: AppColors.brown,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.dh), topRight: Radius.circular(20.dh))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.all(5.0.dh),
            child: Text(model.attendanceDate,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.dw, fontWeight: FontWeight.w600, color: AppColors.black),),
          ),
          Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.dw),),
          Padding(
            padding: EdgeInsets.all(5.0.dh),
            child: Text(model.employeeName,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.dw, fontWeight: FontWeight.w600, color: AppColors.black),),
          ),

        ],
      ),
    );
  }

  _buildMonthDialogBox(TeamAttendanceSuppModel model) {
    int index = model.team_atten.length;
    return InkWell(
      onTap: () async {
        _showMonthDialogue(model);
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
                  Text(model.team_atten.length == 0 ? "Select Month" : model.team_atten[0].month),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
            )),
      ),
    );
  }

  Future<void> _showMonthDialogue(TeamAttendanceSuppModel model) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: SizedBox(
              width: ScreenSizeConfig.getFullWidth,
              height: 300.dh,
              child: ListView.builder(
                  itemCount: model.month.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        teamAttendanceBloc.init(employeeCode, model.month[index].substring(0,3).toUpperCase());
                        selectedMonth = model.month[index].substring(0,3).toUpperCase();
                        Navigator.pop(context);
                      },
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.dw)),
                        child: Padding(
                          padding: EdgeInsets.all(8.0.dw),
                          child: Text(
                            model.month[index],
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

  _buildEmployeeDialogBox(TeamAttendanceSuppModel model) {
    return InkWell(
      onTap: () async {
        _showEmployeeDialogue(model);
      },
      child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(10.0.dw),
          child: Padding(
            padding: EdgeInsets.all(10.dw),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(employeename.isNotEmpty ? employeename : "Employee Name") ,
                const Icon(Icons.arrow_drop_down)
              ],
            ),
          )),
    );
  }

  Future<void> _showEmployeeDialogue(TeamAttendanceSuppModel model) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: SizedBox(
              width: ScreenSizeConfig.getFullWidth,
              height: 300.dh,
              child: ListView.builder(
                  itemCount: model.employee.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        teamAttendanceBloc.init(model.employee[index].employeeNumber,selectedMonth);
                        employeeCode = model.employee[index].employeeNumber;
                        employeename = model.employee[index].name;
                        Navigator.pop(context);
                      },
                      child: Card(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5.0.dw),
                              child: Container(
                                child: Text(
                                  model.employee[index].name +" - " +model.employee[index].employeeNumber,
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 18.dw,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            Container(width: ScreenSizeConfig.getFullWidth,height: 1.dw,color: AppColors.black,)
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          );
        }) ??
        false;
  }
}


class ApproveRequest extends StatefulWidget {
  const ApproveRequest({Key? key}) : super(key: key);

  @override
  State<ApproveRequest> createState() => _ApproveRequestState();
}

class _ApproveRequestState extends State<ApproveRequest> {

  late TeamLeaderAttendanceApprovalBloc teamLeaderAttendanceApprovalBloc;
  late TeamLeaderAttendanceApproveRejectionBloc teamLeaderAttendanceApproveRejectionBloc;

  TextEditingController approvalController = TextEditingController();
  TextEditingController rejectionController = TextEditingController();

  late LoginService loginService;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    loginService = Provider.of<LoginService>(context, listen: false);
    final attendanceService = Provider.of<AttendanceService>(context, listen: false);
    teamLeaderAttendanceApprovalBloc = TeamLeaderAttendanceApprovalBloc(attendanceService, loginService);
    teamLeaderAttendanceApprovalBloc.init();
    teamLeaderAttendanceApproveRejectionBloc = TeamLeaderAttendanceApproveRejectionBloc(attendanceService);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: _buildBody()
    );
  }

  _buildBody() {
    return BlocConsumer<TeamLeaderAttendanceApprovalBloc, TeamLeaderAttendanceApprovalState>(
      bloc: teamLeaderAttendanceApprovalBloc,
      listener: (_, state) {},
      builder: (_, state) {
        return state.when(
            loading: _buildLoading,
            content: _buildTeamAttendance,
            success: _buildTeamAttendance,
            failed: (form, __) => _buildTeamAttendance(form));
      },
    );
  }

  Widget _buildLoading(List<TeamLeaderAttendanceApprovelModel> model) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildTeamAttendance(List<TeamLeaderAttendanceApprovelModel> attendanceDetailList) {
    return Container(
      child: Column(
        children: [
      Expanded(
      child: ListView(
      shrinkWrap: true,
        children: attendanceDetailList.map((model) => _buildList(model))
            .toList(),
      ),
    )
        ],
      ),
    );
  }

  Widget _buildList(TeamLeaderAttendanceApprovelModel model) {
    return Card(
        margin: EdgeInsets.all(20.dw),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.dw)),
        elevation: 10.dw,
        child: Column(
          children: [
            _buildDate(model),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCheckIn(model),
                _buildCheckOut(model)

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildHeadingText("Reason"),
                _buildColonText(),
                _buildText(model.reason)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildRejectButton(model),
                _buildApproveButton(model),
              ],
            ),

          ],
        ));
  }

  _buildHeadingText(String title) {
    return Padding(
      padding: EdgeInsets.all(8.0.dw),
      child: Text(
        title, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.dw),),
    );
  }

  _buildText(String title) {
    return Text(title, style: TextStyle(fontSize: 16.dw,
         color: AppColors.black),);
  }

  _buildDate(TeamLeaderAttendanceApprovelModel model) {
    return Container(
      width: ScreenSizeConfig.getFullWidth,
      decoration: BoxDecoration(
          color: AppColors.brown,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.dh), topRight: Radius.circular(20.dh))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.all(4.0.dh),
            child: Text(model.mispunchDate,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.dw,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black),),
          ),
          Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.dw),),
          Padding(
            padding: EdgeInsets.all(4.0.dh),
            child: Text(model.employeeName + "("+ model.empNumber+ ")",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.dw, fontWeight: FontWeight.w400, color: AppColors.black),),
          ),
        ],
      ),
    );
  }

  _buildCheckIn(TeamLeaderAttendanceApprovelModel model) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildHeadingText("First Check-In"),
        _buildText(model.inTime),
      ],
    );
  }

  _buildCheckOut(TeamLeaderAttendanceApprovelModel model) {
    return Column(
      children: [
        _buildHeadingText("Last Check-Out"),
        _buildText(model.outTime),
      ],
    );
  }

  _buildApproveButton(TeamLeaderAttendanceApprovelModel model) {
    return ElevatedButton(
        onPressed: () {
          openApproveDialog(model);
        },
        style: ElevatedButton.styleFrom(
          minimumSize: Size(100.dw, 30.dh),
          padding: EdgeInsets.all(5.dw),
          backgroundColor: AppColors.green,),
        child: Text("Approve",
          style: TextStyle(
              fontSize: 16.dw,
              fontWeight: FontWeight.w300
          )
          , textAlign: TextAlign.center,)
    );
  }

  _buildRejectButton(TeamLeaderAttendanceApprovelModel model) {
    return ElevatedButton(onPressed: () {
      openRejectionDialog(model);
    },
        style: ElevatedButton.styleFrom(
            minimumSize: Size(100.dw, 30.dh),
            padding: EdgeInsets.all(5.dw),
            backgroundColor: AppColors.navyblue
        ),
        child: Text("Reject",
            style: TextStyle(
                fontSize: 16.dw,
                fontWeight: FontWeight.w300
            )));
  }

  _buildColonText(){
    return Text(":",
      style: TextStyle(fontSize: 14.dw,
          fontWeight: FontWeight.w800,color: AppColors.black),);
  }

  void _approvalRejection(TeamLeaderAttendanceApprovelModel model, String status, String remarks) async {
    final data = {
      "emp_cd" : loginService.getCurrentUser!.emp_cd,
      "unit_cd": loginService.getCurrentUser!.unit_cd,
      "mis_punch_id": model.mispunchId,
      "status" : status,
      "remarks": remarks,
    };
    await teamLeaderAttendanceApproveRejectionBloc.ApprovalRejectionStatus(data);
    final state = teamLeaderAttendanceApproveRejectionBloc.state;
    state.maybeWhen(
        success: (model, message) {
          ScaffoldMessenger.of(scaffoldKey.currentContext!)
              .showSnackBar(SnackBar(
              content: Text(
                message!,
                style: const TextStyle(color: Colors.white),
              )));
          teamLeaderAttendanceApprovalBloc.init();
        },
        failed: (model, message) {
          ScaffoldMessenger.of(scaffoldKey.currentContext!)
              .showSnackBar(SnackBar(content: Text(message)));
        },
        orElse: () {});
  }

  Future openApproveDialog(TeamLeaderAttendanceApprovelModel model) => showDialog(
    context: context,
    builder: (context) => Dialog(
      elevation: 8.0,
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: SingleChildScrollView(
        child: SizedBox(
            height: 220.dh,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0.dw),
                  child:  Text("Are you sure you want to approve?", style: TextStyle(fontSize: 16.dw,fontWeight: FontWeight.w400),),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0.dw),
                  child: TextField(
                    maxLines: null,
                    controller: approvalController,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                        hintText: "  Enter Your Remark Here",
                        contentPadding: EdgeInsets.all(8.dw)
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.red,
                          minimumSize: Size(40.dw, 30.dh),
                          elevation: 8.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0))),
                      child:  Text(
                        "Cancel",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.dw),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (){
                        _approvalRejection(model,"A", approvalController.text);
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreen,
                          minimumSize: Size(40.dw, 30.dh),
                          elevation: 8.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0))),
                      child:  Text(
                        "Approve",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.dw),
                      ),
                    ),
                  ],
                )

              ],

            )
        ),
      ),
    ),
  );

  Future openRejectionDialog(TeamLeaderAttendanceApprovelModel model) => showDialog(
    context: context,
    builder: (context) => Dialog(
      elevation: 8.0,
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: SingleChildScrollView(
        child: SizedBox(
            height: 220.dh,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0.dw),
                  child:  Text("Are you sure you want to reject?", style: TextStyle(fontSize: 16.dw,fontWeight: FontWeight.w400),),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0.dw),
                  child: TextField(
                    maxLines: null,
                    controller: approvalController,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                        hintText: "  Enter Your Remark Here",
                        contentPadding: EdgeInsets.all(8.dw)
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.red,
                          minimumSize: Size(40.dw, 30.dh),
                          elevation: 8.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0))),
                      child:  Text(
                        "Cancel",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.dw),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (){
                        _approvalRejection(model, "R", rejectionController.text);
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.portalgreyBlue,
                          minimumSize: Size(40.dw, 30.dh),
                          elevation: 8.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0))),
                      child:  Text(
                        "Reject",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.dw),
                      ),
                    ),
                  ],
                )

              ],

            )
        ),
      ),
    ),
  );


}