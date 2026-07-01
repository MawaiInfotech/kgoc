import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:trisquare_locus/utils/screen_size_config.dart';
import '../bloc/approvewfh_bloc.dart';
import '../bloc/mywfh_bloc.dart';
import '../bloc/pendingwfh_bloc.dart';
import '../model/mywfh_model.dart';
import '../model/pendingwfh_model.dart';
import '../routes/app_routes.dart';
import '../service/wfh_service.dart';
import '../state/mywfh_state.dart';
import '../state/pendingwfh_state.dart';
import '../themes/app_colors.dart';
import '../widgets/app_top_bar.dart';

class WorkFromHomePage extends StatefulWidget {
  const WorkFromHomePage({Key? key}) : super(key: key);

  @override
  State<WorkFromHomePage> createState() => _WorkFromHomePageState();
}

class _WorkFromHomePageState extends State<WorkFromHomePage> with SingleTickerProviderStateMixin {

  late TabController tabController;

  late PageController pageController;

  int currentPage = 0;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    pageController = PageController(initialPage: currentPage, viewportFraction: 0.8);
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
                        "assets/images/workfromhome.png",
                        scale: 1.5.dw,
                      ),
                      const Text("My Workfrom Home"),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/pending.png",
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
                      MyWorkfromHomePage(),
                      ApproveWorkfromHomePage(),
                    ]
                ))
          ],
        ));
  }
}

class MyWorkfromHomePage extends StatefulWidget {
  const MyWorkfromHomePage({Key? key}) : super(key: key);

  @override
  State<MyWorkfromHomePage> createState() => _MyWorkfromHomePageState();
}

class _MyWorkfromHomePageState extends State<MyWorkfromHomePage> {

  late MyWorkfromHomeBloc myWorkfromHomeBloc;

  late ApproveWfhBloc approveWfhBloc;

  late PendingWfhBloc pendingWfhBloc;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController cancelController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final workfromHomeService = Provider.of<WorkfromHomeService>(context, listen: false);
    myWorkfromHomeBloc = MyWorkfromHomeBloc(workfromHomeService);
    approveWfhBloc = ApproveWfhBloc(workfromHomeService);
    myWorkfromHomeBloc.init();
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
    return BlocConsumer<MyWorkfromHomeBloc, MyWfhState>(
      bloc: myWorkfromHomeBloc,
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

  Widget _buildLoading(List<MyWorkfromHomeModel> model) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildMyLeave(List<MyWorkfromHomeModel> model) {
    return ListView(
      shrinkWrap: true,
      children: [
        _buildMyWorkfromHomeCard(model)
        //Expanded(child:),
      ],
    );
  }

  _buildMyWorkfromHomeCard(List<MyWorkfromHomeModel> myworkfromHomeList) {
    return Column(
      // shrinkWrap: true,
      children: myworkfromHomeList.map((model) => _buildRequesttedLeaveCard(model)).toList(),
    );
  }

  Widget _buildRequesttedLeaveCard(MyWorkfromHomeModel model) {
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
                  "${"Days"} - ${model.days}",
                  style: TextStyle(
                      color: AppColors.navyblue,
                      fontSize: 14.dw,
                      fontWeight: FontWeight.w400),
                ),
                Container(
                  width: 180.dw,
                  child: Text("${"Reason "} - ${model.reason}",
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
          if(model.granted == "P")Padding(
            padding: EdgeInsets.only(right: 20.dw, top: 20.dw),
            child: InkWell(
              onTap: (){
                openCancelDialouge(model);
              },
              child: Image.asset("assets/images/undo-2.png", scale: 22.dw,),
            ),
          ),
          if(model.granted == "A")(Padding(
            padding: EdgeInsets.only(right: 10.dw, top: 18.dw),
            child: Image.asset("assets/images/approved.png", scale: 12.dw,),
          )),
          if(model.granted == "R")(Padding(
            padding: EdgeInsets.only(right: 10.dw, top: 5.dw),
            child: Image.asset("assets/images/rejected.png", scale: 12.dw,),
          )),
          if(model.granted == "C")(Padding(
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
            final shouldInit = await Navigator.pushNamed(context, AppRoutes.requestWorkfromHome) as bool?;
            print(shouldInit);
            if(shouldInit != null && shouldInit) myWorkfromHomeBloc.init();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.red,
            fixedSize: Size(60.dw, 40.dh),
          ),
          child: Text(
            "Request Workfrom Home",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.dw),
          )),
    );
  }

  void _approvalRejection(MyWorkfromHomeModel model, String status, String remarks) async {
    final data = {
      "app_no": model.appNumber,
      "status": status,
      "remarks": remarks,
    };
    await approveWfhBloc.ApprovalRejectionStatus(data);
    final state = approveWfhBloc.state;
    state.maybeWhen(
        success: (model, message) {
          ScaffoldMessenger.of(scaffoldKey.currentContext!).showSnackBar(SnackBar(
              content: Text(message!, style: const TextStyle(color: Colors.white),)));
          pendingWfhBloc.init();
        },
        failed: (model, message) {
          ScaffoldMessenger.of(scaffoldKey.currentContext!)
              .showSnackBar(SnackBar(content: Text(message)));
        },
        orElse: () {});
  }

  Future openCancelDialouge(MyWorkfromHomeModel model) => showDialog(
    context: context,
    builder: (context) => Dialog(
      elevation: 8.0,
      shape:
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: SingleChildScrollView(
        child: SizedBox(
            height: 180.dw,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0.dw),
                  child: Text(
                    "Are you sure you want to cancel ?",
                    style: TextStyle(
                        fontSize: 16.dw, fontWeight: FontWeight.w400),
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
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        pendingWfhBloc.init();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.red,
                          minimumSize: Size(40.dw, 30.dh),
                          elevation: 8.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0))),
                      child: Text(
                        "Back",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.dw),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _approvalRejection(model, "C", cancelController.text);
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreen,
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
                  ],
                )
              ],
            )),
      ),
    ),
  );
}

class ApproveWorkfromHomePage extends StatefulWidget {
  const ApproveWorkfromHomePage({Key? key}) : super(key: key);

  @override
  State<ApproveWorkfromHomePage> createState() => _ApproveWorkfromHomePageState();
}

class _ApproveWorkfromHomePageState extends State<ApproveWorkfromHomePage> {

  late PendingWfhBloc pendingWfhBloc;

  late ApproveWfhBloc approveWfhBloc;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController approvalController = TextEditingController();
  TextEditingController rejectionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final workfromHomeService = Provider.of<WorkfromHomeService>(context, listen: false);
    pendingWfhBloc = PendingWfhBloc(workfromHomeService);
    approveWfhBloc = ApproveWfhBloc(workfromHomeService);
    pendingWfhBloc.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: _buildBody(),
    );
  }

  _buildBody() {
    return BlocConsumer<PendingWfhBloc, PendingWfhState>(
      bloc: pendingWfhBloc,
      listener: (_, state) {},
      builder: (_, state) {
        return state.when(
            loading: _buildLoading,
            content: _buildPendingWfhCard,
            success: _buildPendingWfhCard,
            failed: (form, __) => _buildPendingWfhCard(form));
      },
    );
  }

  Widget _buildLoading(List<PendingWfhModel> model) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildPendingWfhCard(List<PendingWfhModel> approvedLeaveList) {
    return ListView(
      shrinkWrap: true,
      children: approvedLeaveList.map((model) => _buildPendingWfhList(model)).toList(),
    );
  }

  Widget _buildPendingWfhList(PendingWfhModel model) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.all(10.dw),
      color: Colors.grey.shade50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.dw)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.dw,
          ),
          Row(
            children: [
              _buildBoldText(title: "Name"),
              _buildcolon(),
              _buildApproveText(title: model.name),
            ],
          ),
          Row(
            children: [
              _buildBoldText(title: "Employee Code"),
              _buildcolon(),
              _buildApproveText(title: model.empNumber),
            ],
          ),
          Row(
            children: [
              _buildBoldText(title: "Department"),
              _buildcolon(),
              _buildApproveText(title: model.departmentCode)
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBoldText(title: "No. of Days"),
              _buildcolon(),
              _buildApproveText(title: model.days)
            ],
          ),
          _buildButtons(model),
        ],
      ),
    );
  }

  _buildBoldText({required String title}) {
    return Container(
      width: 150.dw,
      padding: EdgeInsets.only(left: 10.dw, top: 8.dw),
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
      padding: EdgeInsets.only(left: 10.dw,top: 8.dw),
      child: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 16.dw),
      ),
    );
  }

  _buildButtons(PendingWfhModel model) {
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
              pendingWfhBloc.init();
              // _approvalRejection(model, "A");
            },
          ),
        ),
      ],
    );
  }

  void _approvalRejection(PendingWfhModel model, String status, String remarks) async {
    final data = {
      "app_no": model.appNumber,
      "status": status,
      "remarks": remarks,
    };
    await approveWfhBloc.ApprovalRejectionStatus(data);
    final state = approveWfhBloc.state;
    state.maybeWhen(
        success: (model, message) {
          ScaffoldMessenger.of(scaffoldKey.currentContext!).showSnackBar(SnackBar(
              content: Text(message!, style: const TextStyle(color: Colors.white),)));
          pendingWfhBloc.init();
        },
        failed: (model, message) {
          ScaffoldMessenger.of(scaffoldKey.currentContext!)
              .showSnackBar(SnackBar(content: Text(message)));
        },
        orElse: () {});
  }

  Future openApproveDialog(PendingWfhModel model) => showDialog(
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
                        pendingWfhBloc.init();
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
                    ElevatedButton(
                      onPressed: () {
                        _approvalRejection(model, "A", approvalController.text);
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreen,
                          minimumSize: Size(40.dw, 30.dh),
                          elevation: 8.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0))),
                      child: Text(
                        "Approve",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.dw),
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    ),
  );

  Future openRejectionDialog(PendingWfhModel model) => showDialog(
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
                        pendingWfhBloc.init();
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
                    ElevatedButton(
                      onPressed: () {
                        _approvalRejection(model, "R", rejectionController.text);
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.portalgreyBlue,
                          minimumSize: Size(40.dw, 30.dh),
                          elevation: 8.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0))),
                      child: Text(
                        "Reject",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.dw),
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    ),
  );
}
