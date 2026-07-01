import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:trisquare_locus/utils/screen_size_config.dart';
import '../bloc/approveoffduty_bloc.dart';
import '../bloc/odapprovereject_bloc.dart';
import '../bloc/offduty_bloc.dart';
import '../model/approveoffduty_model.dart';
import '../model/employeeoffdutylist_model.dart';
import '../routes/app_routes.dart';
import '../service/login_service.dart';
import '../service/offduty_service.dart';
import '../state/approveoffduty_state.dart';
import '../state/employeeoffdutylist_state.dart';
import '../state/odapprovereject_state.dart';
import '../themes/app_colors.dart';
import '../widgets/app_top_bar.dart';

class OnDutyPage extends StatefulWidget {
  const OnDutyPage({Key? key}) : super(key: key);

  @override
  State<OnDutyPage> createState() => _OnDutyPageState();
}

class _OnDutyPageState extends State<OnDutyPage> with SingleTickerProviderStateMixin {

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
    return  Scaffold(
      backgroundColor: Colors.grey.shade100,
        appBar: const AppTopBar(title: "Outdoor Duty"),
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
                unselectedLabelStyle: TextStyle(fontSize: 16.dh),
                indicatorPadding: EdgeInsets.all(8.dh),
                labelPadding:  EdgeInsets.all(8.dh),
                labelStyle:
                TextStyle(fontSize: 16.dh, fontWeight: FontWeight.w600),
                tabs: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/briefcase.png",
                        scale: 14.dw,
                      ),
                      const Text("My Outdoor Duty"),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/stamp.png",
                        scale: 15.dw,
                      ),
                      const Text("Pending For Approval OD"),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(controller: tabController, children:
                const [
                  MyOffDutyPage(),
                  ApproveOffDutyPage(),
                ]
                )
            )
          ],
        ));
  }
}

class MyOffDutyPage extends StatefulWidget {
  const MyOffDutyPage({Key? key}) : super(key: key);

  @override
  State<MyOffDutyPage> createState() => _MyOffDutyPageState();
}

class _MyOffDutyPageState extends State<MyOffDutyPage> {

  late EmployeeoffdutyBloc bloc;

  late ApproveoffdutyBloc approveoffdutyBloc;

  late OdApproveRejectBloc odApproveRejectBloc;

  late LoginService loginService = LoginService();

  final scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController cancelController = TextEditingController();


  @override
  void initState() {
    super.initState();
    final offdutyService = Provider.of<OffdutyService>(context, listen: false);
    final loginService = Provider.of<LoginService>(context, listen: false);
    bloc = EmployeeoffdutyBloc(offdutyService, loginService);
    approveoffdutyBloc = ApproveoffdutyBloc(offdutyService, loginService);
    bloc.init();
    odApproveRejectBloc = OdApproveRejectBloc(offdutyService);
    approveoffdutyBloc.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
        backgroundColor: Colors.grey.shade100,
        body: _buildBody());
  }

  _buildBody() {
    return BlocConsumer<EmployeeoffdutyBloc, EmployeeoffdutyState>(
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

  Widget _buildLoading(List<EmployeeoffdutyListModel> model) {
    return const Center(child:  CircularProgressIndicator());
  }

  Widget _buildMyLeave(List<EmployeeoffdutyListModel> model) {
    return Column(
      children: [
        Expanded(child: _buildRequestLeaveCard(model)),
        _buildRequestOffdutyButton()
      ],
    );
  }

  _buildRequestLeaveCard(List<EmployeeoffdutyListModel> offdutylist) {
    return ListView(
      shrinkWrap: true,
      children: offdutylist.map((model) => _buildRequesttedLeaveCard(model)).toList(),
    );
  }

  Widget _buildRequesttedLeaveCard(EmployeeoffdutyListModel model) {
    return Card(
      elevation: 10.dw,
      color: Colors.grey.shade200,
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
                  "${model.odStartDate}  -  ${model.odEndDate}",
                  style: TextStyle(
                      color: AppColors.black,
                      fontSize: 16.dw,
                      fontWeight: FontWeight.w500),
                ),
            const SizedBox(height: 10,),
                Row(
                  children: [
                    _buildOdRemarks(model.remark),
                    const Text(" -  "),
                    Text( model.odPurposeName,
                      style: TextStyle(
                          color: AppColors.navyblue,
                          fontSize: 14.dw,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                Text(
                  model.placetovisitName,
                  style: TextStyle(
                      color: AppColors.navyblue,
                      fontSize: 14.dw,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          if(model.odStateName == "Pending")Padding(
              padding: EdgeInsets.only(right: 20.dw, top: 20.dw),
              child: InkWell(
                onTap: (){
                  openApproveDialog(model);
                  approveoffdutyBloc.init();
                },
                child: Image.asset("assets/images/undo-2.png", scale: 22.dw,),
              ),
            ),
          if(model.odStateName == "Approved")(Padding(
                padding: EdgeInsets.only(right: 10.dw, top: 18.dw),
                child: Image.asset("assets/images/approved.png", scale: 12.dw,),
              )),
          if(model.odStateName == "Rejected")(Padding(
                padding: EdgeInsets.only(right: 10.dw, top: 5.dw),
                child: Image.asset("assets/images/rejected.png", scale: 12.dw,),
              )),
          // if(model.odStateName == "Cancel")(Padding(
          //       padding: EdgeInsets.only(right: 10.dw, top: 10.dw),
          //       child: Image.asset("assets/images/cancelled.png", scale: 16.dw,),
          //     )),
        ],
      ),
    );
  }

  _buildOdRemarks(String title){
    return Text(title);
  }

  _buildRequestOffdutyButton() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () async {
              final shouldInit = await Navigator.pushNamed(context, AppRoutes.requestoffduty) as bool?;
              if(shouldInit != null && shouldInit) bloc.init();
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.red
            ),
            child: Center(
              child: Text(
                "Request OD",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.dw),
              ),
            )),
      ),
    );
  }

  Future openApproveDialog(EmployeeoffdutyListModel model) => showDialog(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0.dw),
                      child: ElevatedButton(
                        onPressed: () {
                          approveoffdutyBloc.init();
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
                    Padding(
                      padding: EdgeInsets.all(8.0.dw),
                      child: BlocConsumer<OdApproveRejectBloc, OdApproveRejectState>(
                          bloc: odApproveRejectBloc,
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
                                  return CircularProgressIndicator();
                                },
                                orElse: (){
                                  return ElevatedButton(
                                    onPressed: () {
                                      _approvalRejection(model, "C");
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

  void _approvalRejection(EmployeeoffdutyListModel model, String odState) async {
    final data = {
      "emp_cd": loginService.getCurrentUser!.emp_cd,
      "unit_cd": loginService.getCurrentUser!.unit_cd,
      "gate_pass_id": model.gatePassId,
      "od_state": odState,
    };
    await odApproveRejectBloc.ApprovalRejectionStatus(data);
    bloc.init();
  }

}

class ApproveOffDutyPage extends StatefulWidget {
  const ApproveOffDutyPage({Key? key}) : super(key: key);

  @override
  State<ApproveOffDutyPage> createState() => _ApproveOffDutyPageState();
}

class _ApproveOffDutyPageState extends State<ApproveOffDutyPage> {

  late ApproveoffdutyBloc approveoffdutyBloc;

  late LoginService loginService;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController approvalController = TextEditingController();

  TextEditingController rejectionController = TextEditingController();

  late OdApproveRejectBloc odApproveRejectBloc;

  @override
  void initState() {
    super.initState();
    final offdutyService = Provider.of<OffdutyService>(context, listen: false);
    loginService = Provider.of<LoginService>(context, listen: false);
    approveoffdutyBloc = ApproveoffdutyBloc(offdutyService, loginService);
    approveoffdutyBloc.init();
    odApproveRejectBloc = OdApproveRejectBloc(offdutyService);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: _buildBody(),
    );
  }

  _buildBody() {
    return BlocConsumer<ApproveoffdutyBloc, ApproveoffdutyState>(
      bloc: approveoffdutyBloc,
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

  Widget _buildLoading(List<ApproveoffdutyModel> model) {
    return const Center(child:  CircularProgressIndicator());
  }

  Widget _buildApprovedLeave(List<ApproveoffdutyModel> approvedLeaveList) {
    return Column(
      children: [
        Expanded(
            child: ListView(
              shrinkWrap: true,
              children: approvedLeaveList.map((model) => _buildApprovedLeaveList(model)).toList(),
            ))
      ],
    );
  }

  Widget _buildApprovedLeaveList(ApproveoffdutyModel model) {
    return Card(
      elevation: 8,
      color: Colors.grey.shade200,
      margin: EdgeInsets.all(10.dw),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 10.dw,
          ),
          Row(
            children: [
               _buildBoldText(title: "Name"),
              _buildColon(),
               _buildApproveText(title: model.employeeName),
            ],
          ),
          Row(
            children: [
              _buildBoldText(title: "Employee Code"),
              _buildColon(),
              _buildApproveText(title: model.employeeCode),
            ],
          ),
          Row(
            children: [
              _buildBoldText(title: "Department"),
              _buildColon(),
              _buildApproveText(title: model.departmentName)
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBoldText(title: "OD Purpose"),
              _buildColon(),
              _buildApproveText(title: model.odPurposeName)
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBoldText(title: "OD Name"),
              _buildColon(),
              _buildApproveText(title: model.odName)
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBoldText(title: "OD TYpe"),
              _buildColon(),
              _buildApproveText(title: model.odTypeName)
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBoldText(title: "From Date"),
              _buildColon(),
              _buildApproveText(title: model.odStartDate + " (" + model.odStartTime + " )")
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBoldText(title: "To Date"),
              _buildColon(),
              _buildApproveText(title: model.odEndDate + " (" + model.odEndTime + ")")
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBoldText(title: "Project"),
              _buildColon(),
              _buildApproveText(title: model.placetovisitName)
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBoldText(title: "Remarks"),
              _buildColon(),
              _buildApproveText(title: model.remark)
            ],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            height: 1.0,
            color: Colors.black,
          ),
          _buildButtons(model),
        ],
      ),
    );
  }

  _buildBoldText({required String title}) {
    return Container(
      width: 150.dw,
      padding: EdgeInsets.only(left: 10.dw,top: 10.dh),
      child: Text(
        "$title",
        overflow: TextOverflow.ellipsis,
        maxLines: 4,
        style: TextStyle(fontSize: 16.dw, fontWeight: FontWeight.w500),
      ),
    );
  }

  _buildColon(){
    return Container(
      width: 40.dw,
      padding: EdgeInsets.only(left: 10.dw,top: 10.dh),
      child: Text(
        ":",
        overflow: TextOverflow.ellipsis,
        maxLines: 4,
        style: TextStyle(fontSize: 16.dw, fontWeight: FontWeight.w500),
      ),
    );
  }

  _buildApproveText({required String title}) {
    return Container(
      width: 150.dw,
      padding: EdgeInsets.only(left: 10.dw, top: 8.dw),
      child: Text(
        title,
        //items.elementAt(index).name ?? "",
        maxLines: 12,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 16.dw),
      ),
    );
  }

  _buildButtons(ApproveoffdutyModel model) {
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
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.dw))),
            child: Text(
              "Approve",
              style: TextStyle(fontSize: 16.dw,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),),
            onPressed: () {
              openApproveDialog(model);
              //_approvalRejection(model, "A");
            },
          ),
        ),
      ],
    );
  }

  void _approvalRejection(
      ApproveoffdutyModel model,
      String odState,
      ) async {

    final data = {
      "emp_cd": loginService.getCurrentUser!.emp_cd,
      "unit_cd": loginService.getCurrentUser!.unit_cd,
      "gate_pass_id": model.gatePassId,
      "od_state": odState,
    };

    await odApproveRejectBloc.ApprovalRejectionStatus(data);
  }

  Future openApproveDialog(ApproveoffdutyModel model) => showDialog(
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
                        approveoffdutyBloc.init();
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
                    BlocConsumer<OdApproveRejectBloc, OdApproveRejectState>(
                      bloc: odApproveRejectBloc,
                      listener: (context, state) {
                        state.maybeWhen(
                          success: (_, message) {
                            Navigator.pop(context);

                            approveoffdutyBloc.init();

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
                          loading: (_) => const SizedBox(
                            width: 40,
                            height: 40,
                            child: CircularProgressIndicator(),
                          ),
                          orElse: () => ElevatedButton(
                            onPressed: () {
                              _approvalRejection(model, "A");
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

  Future openRejectionDialog(ApproveoffdutyModel model) => showDialog(
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
                        approveoffdutyBloc.init();
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
                    BlocConsumer<OdApproveRejectBloc, OdApproveRejectState>(
                      bloc: odApproveRejectBloc,
                      listener: (context, state) {
                        state.maybeWhen(
                          success: (_, message) {
                            Navigator.pop(context);

                            approveoffdutyBloc.init();

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
                          loading: (_) => const SizedBox(
                            width: 40,
                            height: 40,
                            child: CircularProgressIndicator(),
                          ),
                          orElse: () => ElevatedButton(
                            onPressed: () {
                              _approvalRejection(model, "R");
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

