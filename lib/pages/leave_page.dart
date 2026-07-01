import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:trisquare_locus/utils/screen_size_config.dart';
import '../bloc/approvedleave_bloc.dart';
import '../bloc/leavetype_bloc.dart';
import '../bloc/teamleader_leaveapprove_bloc.dart';
import '../model/approvedleave_model.dart';
import '../model/employee_leave_model.dart';
import '../model/employeeleavelist_model.dart';
import '../model/employeeleavetype_model.dart';
import '../routes/app_routes.dart';
import '../service/leave_service.dart';
import '../service/login_service.dart';
import '../state/approvedleave_state.dart';
import '../state/leavetype_state.dart';
import '../state/teamleader_leaveApprovereject_state.dart';
import '../themes/app_colors.dart';
import '../widgets/app_top_bar.dart';

class LeavePage extends StatefulWidget {
  const LeavePage({Key? key}) : super(key: key);

  @override
  State<LeavePage> createState() => _LeavePageState();
}

class _LeavePageState extends State<LeavePage> with SingleTickerProviderStateMixin {

  late TabController tabController;

  late PageController pageController;

  int currentPage = 0;

  @override
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
    return Scaffold(
        appBar: const AppTopBar(title: "Leave Apply"),
        body: Column(
          children: [
            SizedBox(
              height: 100.dh,
              child: TabBar(
                controller: tabController,
                indicatorColor: AppColors.navyblue,
                indicatorWeight: 6.dw,
                labelColor: AppColors.bloodred,
                unselectedLabelColor: AppColors.navyblue,
                unselectedLabelStyle: TextStyle(fontSize: 14.dh),
                indicatorPadding: EdgeInsets.all(8.dh),
                labelPadding: EdgeInsets.all(8.dw),
                labelStyle: TextStyle(fontSize: 18.dh, fontWeight: FontWeight.w500),
                tabs: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/leave.png",
                        scale: 10.dw,
                      ),
                      const Text("My Leaves"),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/leave-2.png",
                        scale: 14.dw,
                      ),
                      Text("Pending For Approval", style: TextStyle(fontSize: 16.dw),),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
                    controller: tabController,
                    children: const [
              MyLeavesPage(),
              ApprovedLeavesPage(),
            ]
                ))
          ],
        ));
  }
}

class MyLeavesPage extends StatefulWidget {
  const MyLeavesPage({Key? key}) : super(key: key);

  @override
  State<MyLeavesPage> createState() => _MyLeavesPageState();
}

class _MyLeavesPageState extends State<MyLeavesPage> {
  late LeavetypeBloc bloc;

  late ApprovedleaveBloc approvedleaveBloc;

  late LoginService loginService = LoginService();

  late TeamLeaderLeaveApproveRejectBloc teamLeaderLeaveApproveRejectBloc;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController cancelController = TextEditingController();

  CarouselSliderController carouselController = CarouselSliderController();

  @override
  void initState() {
    super.initState();
    final leaveService = Provider.of<LeaveService>(context, listen: false);
    final loginService = Provider.of<LoginService>(context, listen: false);
    bloc = LeavetypeBloc(leaveService, loginService);
    approvedleaveBloc = ApprovedleaveBloc(leaveService, loginService);
    bloc.init();
    approvedleaveBloc.init();
    teamLeaderLeaveApproveRejectBloc = TeamLeaderLeaveApproveRejectBloc(leaveService);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: _buildRequestLeaveButton(),
          elevation: 0.0,
        ),
        body: _buildBody());
  }

  _buildBody() {
    return BlocConsumer<LeavetypeBloc, LeaveTypeState>(
      bloc: bloc,
      listener: (_, state) {},
      builder: (_, state) {
        return state.when(
            loading: _buildLoading,
            content: _buildMyLeave,
            success: _buildMyLeave,
            failed: (form, __) => _buildMyLeave(form));
      },
    );
  }

  Widget _buildLoading(EmployeeLeavetypeModel model) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildMyLeave(EmployeeLeavetypeModel model) {
    return RefreshIndicator(
      onRefresh: bloc.init,
      child: ListView(
        shrinkWrap: true,
        children: [
          _buildLeaveTaken(model),
          _buildSlider(model),
          _buildRequestLeaveCard(model)
          //Expanded(child:),
        ],
      ),
    );
  }

  _buildLeaveTaken(EmployeeLeavetypeModel model) {
    return SizedBox(
      width: ScreenSizeConfig.getFullWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Card(
            elevation: 10.dh,
            color: AppColors.navyblue,
            child: Container(
              margin: EdgeInsets.all(10.dw),
              child: Column(
                children: [
                  Text(
                    "Balance Leave",
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14.dw,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    model.balanceLeave.toString(),
                    style: TextStyle(color: AppColors.white),
                  )
                ],
              ),
            ),
          ),
          Card(
            elevation: 10.dh,
            color: AppColors.navyblue,
            child: Container(
              margin: EdgeInsets.all(10.dw),
              child: Column(
                children: [
                  Text(
                    "Leave Taken",
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14.dw,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    model.leaveTaken.toString(),
                    style: TextStyle(color: AppColors.white),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLeaveTypeCard(EmployeeLeaveModel model) {
    return Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(8.dw),
        decoration: BoxDecoration(
            color: AppColors.brown, borderRadius: BorderRadius.circular(20.dw)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0.dw),
              child: Text(
                model.description,
                style: TextStyle(
                    fontSize: 15.0.dw,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildText(
                  title: "Total",
                  title1: model.leaveTotal.toString(),
                  color: AppColors.black,
                ),
                _buildText(
                  title: "Used",
                  title1: model.leaveUsed.toString(),
                  color: AppColors.black,
                ),
                _buildText(
                  title: "Available",
                  title1: model.leaveAvailable.toString(),
                  color: AppColors.black,
                ),
              ],
            ),
          ],
        ));
  }

  _buildSlider(EmployeeLeavetypeModel leavetypeList) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: carouselController,
          options: CarouselOptions(
              height: 150.0.dh,
              autoPlay: false,
              enlargeCenterPage: true,
              viewportFraction: 0.8,
              aspectRatio: 4.0,
              scrollPhysics: const NeverScrollableScrollPhysics(),
              pageSnapping: true),
          items: leavetypeList.emp_leave_list.map((model) {
            return _buildLeaveTypeCard(model);
          }).toList(),
        ),
        Positioned(
          left: 10.dw,
          top: 40.dw,
          child: IconButton(
            onPressed: () {
              carouselController.previousPage();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        Positioned(
          right: 5.dw,
          top: 40.dw,
          child: IconButton(
            onPressed: () {
              carouselController.nextPage();
            },
            icon: const Icon(Icons.arrow_forward_ios_outlined),
          ),
        ),
      ],
    );
  }

  _buildRequestLeaveCard(EmployeeLeavetypeModel leavetypeList) {
    return Column(
     // shrinkWrap: true,
      children: leavetypeList.leave_list
          .map((model) => _buildRequesttedLeaveCard(model))
          .toList(),
    );
  }

  Widget _buildRequesttedLeaveCard(EmployeeleaveListModel model) {
    return Card(
      elevation: 10.dw,
      color: Colors.grey.shade50,
      margin: EdgeInsets.all(8.dw),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0.dw),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${model.fromDate}  -  ${model.endDate}",
                  style: TextStyle(
                      color: AppColors.black,
                      fontSize: 16.dw,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "${model.leaveDescription} - ${model.leaveDays}",
                  style: TextStyle(
                      color: AppColors.navyblue,
                      fontSize: 14.dw,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 180.dw,
                  child: Text(
                    "${"Reason "} - ${model.reason}",
                    maxLines: 2,
                    style: TextStyle(
                        color: AppColors.navyblue,
                        fontSize: 14.dw,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          if(model.leaveGrantedDescription == "Pending")Padding(
            padding: EdgeInsets.only(right: 20.dw, top: 20.dw),
            child: InkWell(
              onTap: (){
                openApproveDialog(model);
                },
              child: Image.asset("assets/images/undo-2.png", scale: 22.dw,),
            ),
          ),
          if(model.leaveGrantedDescription == "Approved")(Padding(
            padding: EdgeInsets.only(right: 10.dw, top: 18.dw),
            child: Image.asset("assets/images/approved.png", scale: 12.dw,),
          )),
          if(model.leaveGrantedDescription == "Rejected")(Padding(
            padding: EdgeInsets.only(right: 10.dw, top: 5.dw),
            child: Image.asset("assets/images/rejected.png", scale: 12.dw,),
          )),
          if(model.leaveGrantedDescription == "Cancel")(Padding(
            padding: EdgeInsets.only(right: 10.dw, top: 10.dw),
            child: Image.asset("assets/images/cancelled.png", scale: 16.dw,),
          )),
        ],
      ),
    );
  }

  _buildRequestLeaveButton() {
    return Padding(
      padding: EdgeInsets.all(10.0.dw),
      child: ElevatedButton(
          onPressed: () async {
            final shouldInit = await Navigator.pushNamed(context, AppRoutes.requestLeave) as bool?;
           // print(shouldInit);
            if(shouldInit != null && shouldInit) bloc.init();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.red,
            fixedSize: Size(60.dw, 40.dh),
          ),
          child: Text(
            "Request Leave",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.dw),
          )),
    );
  }

  Future openApproveDialog(EmployeeleaveListModel model) => showDialog(
        context: context,
        builder: (context) => Dialog(
          elevation: 8.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: SingleChildScrollView(
            child: SizedBox(
                height: 220.dh,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0.dw),
                      child: Text(
                        "Are you sure you want to cancel ?",
                        style: TextStyle(
                            fontSize: 18.dw, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0.dw),
                      child: TextField(
                        maxLines: null,
                        controller: cancelController,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                            hintText: "  Enter Your Remark Here",
                            contentPadding: EdgeInsets.all(8.dw)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0.dw),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.red,
                                minimumSize: Size(40.dw, 30.dh),
                                elevation: 8.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0))),
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.dw),
                            ),
                          ),
                        ),

                        // Padding(
                        //   padding: EdgeInsets.all(8.0.dw),
                        //   child: ElevatedButton(
                        //     onPressed: () {
                        //       _approvalRejection(model, "C");
                        //
                        //       Navigator.pop(context);
                        //       bloc.init();
                        //       approvedleaveBloc.init();
                        //     },
                        //     style: ElevatedButton.styleFrom(
                        //         primary: Colors.lightGreen,
                        //         minimumSize: Size(80.dw, 30.dh),
                        //         elevation: 8.0,
                        //         shape: RoundedRectangleBorder(
                        //             borderRadius: BorderRadius.circular(8.0))),
                        //     child: Text(
                        //       "Ok",
                        //       style: TextStyle(
                        //           fontWeight: FontWeight.bold, fontSize: 18.dw),
                        //     ),
                        //   ),
                        // ),
                        Padding(
                          padding: EdgeInsets.all(8.0.dw),
                          child: BlocConsumer<TeamLeaderLeaveApproveRejectBloc, TeamleaderLeaveApproveState>(
                              bloc: teamLeaderLeaveApproveRejectBloc,
                              listener: (_, state){
                                state.maybeWhen(
                                    success: (_, message){
                                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message??"Something")));
                                      Navigator.pop(context);
                                      bloc.init();
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
                                    orElse: (){
                                      return ElevatedButton(
                                        onPressed: () {
                                          _approvalRejection(model, "C", cancelController.text);
                                          bloc.init();
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.lightGreen,
                                            minimumSize: Size(80.dw, 30.dh),
                                            elevation: 8.0,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(8.0))),
                                        child: Text(
                                          "Ok",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold, fontSize: 18.dw),
                                        ),
                                      );
                                    });
                              }
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          ),
        ),
      );

  void _approvalRejection(EmployeeleaveListModel model, String grantedType, String remark) async {
    final data = {
      "emp_cd": loginService.getCurrentUser!.emp_cd,
      "leave_pk_id": model.leavePkId,
      "leave_granted": grantedType,
      "remarks": remark,
    };
    await teamLeaderLeaveApproveRejectBloc.ApprovalRejectionStatus(data);
    bloc.init();
    //final state = teamLeaderLeaveApproveRejectBloc.state;
    // state.maybeWhen(
    //     success: (model, message) {
    //       ScaffoldMessenger.of(scaffoldKey.currentContext!)
    //           .showSnackBar(SnackBar(
    //               content: Text(
    //         message!,
    //         style: const TextStyle(color: Colors.white),
    //       )));
    //       approvedleaveBloc.init();
    //       bloc.init();
    //     },
    //     failed: (model, message) {
    //       ScaffoldMessenger.of(scaffoldKey.currentContext!)
    //           .showSnackBar(SnackBar(content: Text(message)));
    //     },
    //     orElse: () {});
  }

  _buildText({required String title, required String title1, required color}) {
    return Padding(
      padding: EdgeInsets.all(0.0.dw),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: color, fontSize: 14.dw, fontWeight: FontWeight.w400),
          ),
          Text(
            title1,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: color, fontSize: 14.dh, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class ApprovedLeavesPage extends StatefulWidget {
  const ApprovedLeavesPage({Key? key}) : super(key: key);

  @override
  State<ApprovedLeavesPage> createState() => _ApprovedLeavesPageState();
}

class _ApprovedLeavesPageState extends State<ApprovedLeavesPage> {
  late ApprovedleaveBloc approvedleaveBloc;

  late TeamLeaderLeaveApproveRejectBloc teamLeaderLeaveApproveRejectBloc;

  late LoginService loginService;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController approvalController = TextEditingController();
  TextEditingController rejectionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final leaveService = Provider.of<LeaveService>(context, listen: false);
    loginService = Provider.of<LoginService>(context, listen: false);
    approvedleaveBloc = ApprovedleaveBloc(leaveService, loginService);
    approvedleaveBloc.init();
    teamLeaderLeaveApproveRejectBloc =
        TeamLeaderLeaveApproveRejectBloc(leaveService);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: _buildBody(),
    );
  }

  _buildBody() {
    return BlocConsumer<ApprovedleaveBloc, ApproveleaveState>(
      bloc: approvedleaveBloc,
      listener: (_, state) {},
      builder: (_, state) {
        return state.when(
            loading: _buildLoading,
            content: _buildApprovedLeave,
            success: _buildApprovedLeave,
            failed: (form, __) => _buildApprovedLeave(form));
      },
    );
  }

  Widget _buildLoading(List<ApprovedLeaveModel> model) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildApprovedLeave(List<ApprovedLeaveModel> approvedLeaveList) {
    return Column(
      children: [
        Expanded(
            child: ListView(
          shrinkWrap: true,
          children: approvedLeaveList
              .map((model) => _buildApprovedLeaveList(model))
              .toList(),
        ))
      ],
    );
  }

  Widget _buildApprovedLeaveList(ApprovedLeaveModel model) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.all(10.dw),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildButtons(model),
          Container(
            padding: const EdgeInsets.all(8),
            height: 1.0,
            color: Colors.black,
          ),
          Row(
            children: [
              _buildBoldText(title: "Name"),
              _buildcolon(),
              _buildApproveText(title: model.employeeName),
            ],
          ),
          Row(
            children: [
              _buildBoldText(title: "Employee Code"),
              _buildcolon(),
              _buildApproveText(title: model.employeeCode),
            ],
          ),
          Row(
            children: [
              _buildBoldText(title: "Department"),
              _buildcolon(),
              _buildApproveText(title: "${model.department}  (${model.departmentCode})")
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBoldText(title: "Reason"),
              _buildcolon(),
              _buildApproveText(title: model.reason)
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBoldText(title: "Leave Type"),
              _buildcolon(),
              _buildApproveText(
                  title: "${model.leaveType}(${model.leaveDescription})")
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBoldText(title: "From Date"),
              _buildcolon(),
              _buildApproveText(title: model.fromDate)
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBoldText(title: "To Date"),
              _buildcolon(),
              _buildApproveText(title: model.endDate)
            ],
          ),
          Container(
            padding: EdgeInsets.all(10.dw),
            decoration: BoxDecoration(
                color: AppColors.red,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15.dw),
                    bottomLeft: Radius.circular(15.dw))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildDays(title: "No. of Days"),
                _buildcolon(),
                _buildDays(title: model.leaveDays)
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildBoldText({required String title}) {
    return Container(
      width: 150.dw,
      padding: EdgeInsets.only(left: 10.dw),
      child: Text(
        title,
        overflow: TextOverflow.ellipsis,
        maxLines: 4,
        style: TextStyle(fontSize: 16.dw, fontWeight: FontWeight.w500),
      ),
    );
  }

  _buildcolon() {
    return const Text(":");
  }

  _buildApproveText({required String title}) {
    return Container(
      width: 230.dw,
      padding: EdgeInsets.only(left: 10.dw, top: 8.dw),
      child: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 16.dw),
      ),
    );
  }

  _buildDays({required String title}) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 18.dw, color: Colors.white, fontWeight: FontWeight.w500),
    );
  }

  _buildButtons(ApprovedLeaveModel model) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0.dw),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.navyblue,
                minimumSize: const Size(80, 45),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: Row(
              children: [
                Text(
                  "Reject  ",
                  style: TextStyle(
                      fontSize: 16.dw,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                Image.asset(
                  "assets/images/right-arrow-2.png",
                  scale: 20,
                )
              ],
            ),
            onPressed: () {
              openRejectionDialog(model);
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.dw),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.green,
                minimumSize: const Size(80, 45),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.dw))),
            child: Text(
              "Approve",
              style: TextStyle(
                  fontSize: 16.dw,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            onPressed: () {
              openApproveDialog(model);
              approvedleaveBloc.init();
              // _approvalRejection(model, "A");
            },
          ),
        ),
      ],
    );
  }

  void _approvalRejection(
      ApprovedLeaveModel model, String grantedType, String remarks) async {
    final data = {
      "emp_cd": loginService.getCurrentUser!.emp_cd,
      "leave_pk_id": model.leaveId,
      "leave_granted": grantedType,
      "remarks": remarks,
    };
    await teamLeaderLeaveApproveRejectBloc.ApprovalRejectionStatus(data);
    // final state = teamLeaderLeaveApproveRejectBloc.state;
    // state.maybeWhen(
    //     success: (model, message) {
    //       approvedleaveBloc.init();
    //       ScaffoldMessenger.of(scaffoldKey.currentContext!).showSnackBar(SnackBar(
    //           content: Text(message!, style: const TextStyle(color: Colors.white),)));
    //
    //     },
    //
    //     failed: (model, message) {
    //       ScaffoldMessenger.of(scaffoldKey.currentContext!)
    //           .showSnackBar(SnackBar(content: Text(message)));
    //     },
    //     orElse: () {});
  }

  Future openApproveDialog(ApprovedLeaveModel model) => showDialog(
        context: context,
        builder: (context) => Dialog(
          elevation: 8.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: SingleChildScrollView(
            child: SizedBox(
                height: 220.dh,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0.dw),
                      child: Text(
                        "Are you sure you want to approve?",
                        style: TextStyle(
                            fontSize: 16.dw, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0.dw),
                      child: TextField(
                        maxLines: null,
                        controller: approvalController,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                            hintText: "  Enter Your Remark Here",
                            contentPadding: EdgeInsets.all(8.dw)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            approvedleaveBloc.init();
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.red,
                              minimumSize: Size(40.dw, 30.dh),
                              elevation: 8.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0))),
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.dw),
                          ),
                        ),
                        BlocConsumer<
                            TeamLeaderLeaveApproveRejectBloc,
                            TeamleaderLeaveApproveState>(
                          bloc: teamLeaderLeaveApproveRejectBloc,
                          listener: (context, state) {
                            state.maybeWhen(
                              success: (_, message) {
                                Navigator.pop(context);

                                approvedleaveBloc.init();

                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(message ?? "Approved Successfully"),
                                  ),
                                );
                              },
                              failed: (_, message) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(message),
                                  ),
                                );
                              },
                              orElse: () {},
                            );
                          },
                          builder: (context, state) {
                            return state.maybeWhen(
                              loading: (_) => SizedBox(
                                width: 40.dw,
                                height: 40.dw,
                                child: const CircularProgressIndicator(),
                              ),
                              orElse: () => ElevatedButton(
                                onPressed: () {
                                  _approvalRejection(
                                    model,
                                    "A",
                                    approvalController.text,
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.lightGreen,
                                  minimumSize: Size(40.dw, 30.dh),
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Text(
                                  "Approve",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.dw,
                                  ),
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    )
                  ],
                )),
          ),
        ),
      );

  Future openRejectionDialog(ApprovedLeaveModel model) => showDialog(
        context: context,
        builder: (context) => Dialog(
          elevation: 8.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: SingleChildScrollView(
            child: SizedBox(
                height: 220.dh,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0.dw),
                      child: Text(
                        "Are you sure you want to reject?",
                        style: TextStyle(
                            fontSize: 16.dw, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0.dw),
                      child: TextField(
                        maxLines: null,
                        controller: approvalController,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                            hintText: "  Enter Your Remark Here",
                            contentPadding: EdgeInsets.all(8.dw)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            approvedleaveBloc.init();
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.red,
                              minimumSize: Size(40.dw, 30.dh),
                              elevation: 8.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0))),
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.dw),
                          ),
                        ),
                        BlocConsumer<
                            TeamLeaderLeaveApproveRejectBloc,
                            TeamleaderLeaveApproveState>(
                          bloc: teamLeaderLeaveApproveRejectBloc,
                          listener: (context, state) {
                            state.maybeWhen(
                              success: (_, message) {
                                Navigator.pop(context);

                                approvedleaveBloc.init();

                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(message ?? "Rejected Successfully"),
                                  ),
                                );
                              },
                              failed: (_, message) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(message),
                                  ),
                                );
                              },
                              orElse: () {},
                            );
                          },
                          builder: (context, state) {
                            return state.maybeWhen(
                              loading: (_) => SizedBox(
                                width: 40.dw,
                                height: 40.dw,
                                child: const CircularProgressIndicator(),
                              ),
                              orElse: () => ElevatedButton(
                                onPressed: () {
                                  _approvalRejection(
                                    model,
                                    "R",
                                    rejectionController.text,
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.portalgreyBlue,
                                  minimumSize: Size(40.dw, 30.dh),
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Text(
                                  "Reject",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.dw,
                                  ),
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    )
                  ],
                )),
          ),
        ),
      );
}
