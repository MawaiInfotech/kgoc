import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:trisquare_locus/bloc/sendwishes_bloc.dart';
import 'package:trisquare_locus/model/workaniversary_model.dart';
import 'package:trisquare_locus/utils/screen_size_config.dart';
import '../bloc/employeebirthdetail_bloc.dart';
import '../model/birthday_model.dart';
import '../model/employeebirthdetail_model.dart';
import '../model/login_model.dart';
import '../model/newjoinee_model.dart';
import '../routes/app_routes.dart';
import '../service/homepage_service.dart';
import '../service/login_service.dart';
import '../state/employeebirthdetail_state.dart';
import '../themes/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  List list = [
    Image.asset("assets/images/attendance.jpg"),
    Image.asset("assets/images/leave.jpg.png"),
  ];

  late final LoginModel user;

  late TabController tabController;

  late PageController pageController;

  late EmployeeBirthDetailBloc employeeBirthDetailBloc;

  late SendwishesBloc sendwishesBloc;

  int currentPage = 0;





  PageController controller = PageController(viewportFraction: 0.9);

  var currentPageValue = 0.0;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    user = Provider.of<LoginService>(context, listen: false).getCurrentUser!;
    tabController = TabController(length: 3, vsync: this);
    pageController = PageController(initialPage: currentPage, viewportFraction: 0.8);
    final homePageService = Provider.of<HomePageService>(context, listen: false);
    employeeBirthDetailBloc = EmployeeBirthDetailBloc(homePageService);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        key: scaffoldKey,
        body: Column(
          children: [
            _buildCard(),
            _buildBirthdayCard(),
            Expanded(
              child: _buildGrid(),
            ),
          ],
        )
    );
  }

  _buildGrid() {
    return GridView(
      padding: EdgeInsets.all(10.dw),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 20.dh,
        crossAxisSpacing: 10.dw,
        childAspectRatio: 10.dh / 10.0.dh,
        crossAxisCount: 3,
      ),
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.attendancepage);
          },
          child: Card(
            color:  const Color(0xffFFF2E5),
            elevation: 10.dw,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildImage("assets/images/verification.png"),
                _buildText(title: "Attendance")
              ],
            ),
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, AppRoutes.leaveApply);
          },
          child: Card(
            color: const Color(0xffD9D9BF),
            elevation: 10.dw,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildImage("assets/images/leave-2.png"),
                _buildText(title: "Leave")
              ],
            ),
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, AppRoutes.onDutyPage);
          },
          child: Card(
            color: const Color(0xffE5ECFF),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/images/file.png",
                  scale: 12.dw,
                ),
                _buildText(title: "Outdoor Duty")
              ],
            ),
          ),
        ),
        // InkWell(
        //   onTap: (){
        //     Navigator.pushNamed(context, AppRoutes.workfromHome);
        //   },
        //   child: Card(
        //     color: Color(0xffE3E2DF),
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
        //       children: [
        //         Image.asset(
        //           "assets/images/workfromhome.png",
        //           scale: 1.2.dw,
        //         ),
        //         _buildText(title: "Workfrom Home")
        //       ],
        //     ),
        //   ),
        // ),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, AppRoutes.holidaypage);
          },
          child: Card(
            color: const Color(0xffFFECE5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/images/holiday.png",
                  scale: 12.dw,
                ),
                _buildText(title: "Holidays")
              ],
            ),
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, AppRoutes.noticeboard);
          },
          child: Card(
            color: const Color(0xffFFFBE5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/images/noticeboard.png",
                  scale: 10.dw,
                ),
                _buildText(title: "Notices")
              ],
            ),
          ),
        ),
      ],
    );
  }

  _buildCard() {
    return Padding(
      padding:  EdgeInsets.all(8.0.dw),
      child: Card(
        elevation: 10.dh,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.dw)),
        color: AppColors.brown,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 10.dw),
              child: Image.asset("assets/images/calender.png",scale: 20.dw,),
            ),
            Padding(
              padding:  EdgeInsets.all(8.0.dw),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildCardText(title: "Check In"),
                  _buildCardText(title: user.start_time.toString())
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 10.dw),
              child: Image.asset("assets/images/calender.png",scale: 20.dh,),
            ),
            Padding(
              padding:  EdgeInsets.all(8.0.dw),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildCardText(title: "Check Out"),
                  _buildCardText(title: user.end_time.toString())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildBirthdayCard(){
    return SizedBox(
      height: 270.dw,
      child: Padding(
        padding: EdgeInsets.all(8.0.dw),
        child: Card(
          color: AppColors.lightgreen,
          child: Column(
            children: [
              TabBar(
                  indicatorColor: AppColors.bottlegreen,
                  indicatorWeight: 4.dw,
                  overlayColor: MaterialStateProperty.all(Colors.orange),
                  labelColor: AppColors.bloodred,
                  unselectedLabelColor: AppColors.navyblue,
                  unselectedLabelStyle: TextStyle(fontSize: 12.dh),
                  indicatorPadding: EdgeInsets.all(10.dw),
                  labelPadding: EdgeInsets.all(10.dw),
                  labelStyle: TextStyle(fontSize: 20.dh, fontWeight: FontWeight.w600),
                  controller: tabController,
                  tabs: [
                    Text("Birthdays", style: TextStyle(fontSize: 14.dw),),
                    Text("Work Anniversary",style: TextStyle(fontSize: 12.dw),),
                    Text("New Joinee",style: TextStyle(fontSize: 14.dw),),

                  ]),
              Expanded(child: TabBarView(
                  controller: tabController,
                  children: const [
                    Birthday(),
                    WorkAnniversery(),
                    NewJoinee(),

                  ]))
            ],
          ),
        ),
      ),
    );
  }

  _buildImage(image){
    return Image.asset(image,scale: 10.dw,);
  }

  _buildCardText({required String title}){
    return Text(
      title,
      style: TextStyle(
          color: AppColors.black, fontWeight: FontWeight.w500, fontSize: 18.dh),
    );
  }

  _buildText({required String title}) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: AppColors.black, fontWeight: FontWeight.w500, fontSize: 16.dh),
    );
  }

}

class Birthday extends StatefulWidget {
  const Birthday({Key? key}) : super(key: key);

  @override
  State<Birthday> createState() => _BirthdayState();
}

class _BirthdayState extends State<Birthday> {

  late EmployeeBirthDetailBloc employeeBirthDetailBloc;

  late SendwishesBloc sendwishesBloc;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  late final LoginModel user;

  @override
  void initState() {
    final homePageService = Provider.of<HomePageService>(context, listen: false);
    employeeBirthDetailBloc = EmployeeBirthDetailBloc(homePageService);
    employeeBirthDetailBloc = EmployeeBirthDetailBloc(homePageService);
    sendwishesBloc = SendwishesBloc(homePageService);
    user = Provider.of<LoginService>(context, listen: false).getCurrentUser!;
    employeeBirthDetailBloc.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.babyPink,
        key: scaffoldKey,
        body: Container(
          width: ScreenSizeConfig.getFullWidth,
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/birthday.jpg"), fit: BoxFit.cover, opacity: 0.6)
          ),
          child: _buildBody(),
        )
    );
  }
  _buildBody(){
    return BlocConsumer<EmployeeBirthDetailBloc, EmployeeBirthDetailState>(
      bloc: employeeBirthDetailBloc,
      listener: (_, state){},
      builder: (_, state){
        return state.when(
            loading: _buildLoading,
            content: _buildContent,
            success: _buildContent,
            failed: (form, __) => _buildContent(form)
        );
      },
    );
  }

  Widget _buildLoading(EmployeeBirthDetailModel model){
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildContent(EmployeeBirthDetailModel model){
    final birthdayList = model.emp_births;
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: birthdayList.map((e) => _buildCard(e)).toList(),
    );
  }

  Widget _buildCard(BirthdayModel model){
    int currentDate= DateTime.now().day;
    return Padding(
      padding: EdgeInsets.all(0.0.dw),
      child: SizedBox(
        height: 120.dw,
        width: 150.dw,
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(2.0.dw),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 70.dw,
                  width: 70.dw,
                  child: Image.network(model.photoFile,
                    //fit: BoxFit.cover,

                  ),
                ),
                SizedBox(
                  width: 120.dw,
                  child: Text(model.firstName,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(fontSize: 12.dw),
                    overflow: TextOverflow.ellipsis,),
                ),
                SizedBox(
                  width: 120.dw,
                  child: Text(model.department,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(fontSize: 12.dw),
                    overflow: TextOverflow.ellipsis,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(model.bdate, style: TextStyle(fontSize: 12.dw),),
                    const Text(" "),
                    Text(model.bmonth, style: TextStyle(fontSize: 12.dw),),
                  ],
                ),

                  ElevatedButton(
                        onPressed: () {
                          if(int.parse(model.bdate) == currentDate) {
                            _sendWishes(model);
                          }
                          else{

                          }
                        },
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(100.dw, 0.dh),
                            padding: EdgeInsets.zero
                        ),
                        child: Text(
                          "Send Wishes", style: TextStyle(fontSize: 12.dw),))


              ],
            ),
          ),
        ),
      ),
    );
  }

  void _sendWishes(BirthdayModel model) async {
    final data = {
      'emp_cd': model.employeeNumber,
      'unit_cd': model.unit,
      'type': "birthday",
      'current_user' : user.emp_cd
    };
    await sendwishesBloc.sendWishes(data);
    final state = sendwishesBloc.state;
    state.maybeWhen(
        success: (model, message) {
          ScaffoldMessenger.of(scaffoldKey.currentContext!)
              .showSnackBar(SnackBar(
              content: Text(
                message!,
                style: const TextStyle(color: Colors.white),
              )));
        },
        failed: (model, message) {
          ScaffoldMessenger.of(scaffoldKey.currentContext!)
              .showSnackBar(SnackBar(content: Text(message)));
        },
        orElse: () {});
  }
}

class NewJoinee extends StatefulWidget {
  const NewJoinee({Key? key}) : super(key: key);

  @override
  State<NewJoinee> createState() => _NewJoineeState();
}

class _NewJoineeState extends State<NewJoinee> {

  late EmployeeBirthDetailBloc employeeBirthDetailBloc;

  @override
  void initState() {
    final homePageService = Provider.of<HomePageService>(context, listen: false);
    employeeBirthDetailBloc = EmployeeBirthDetailBloc(homePageService);
    employeeBirthDetailBloc.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: ScreenSizeConfig.getFullWidth,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/welcome.jpg"), fit: BoxFit.fill, opacity: 0.6)
        ),
        child: _buildBody(),
      ),
    );
  }

  _buildBody(){
    return BlocConsumer<EmployeeBirthDetailBloc, EmployeeBirthDetailState>(
      bloc: employeeBirthDetailBloc,
      listener: (_, state){},
      builder: (_, state){
        return state.when(
            loading: _buildLoading,
            content: _buildContent,
            success: _buildContent,
            failed: (form, __) => _buildContent(form)
        );
      },
    );
  }

  Widget _buildLoading(EmployeeBirthDetailModel model){
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildContent(EmployeeBirthDetailModel model){
    final birthdayList = model.emp_newjoins;
    return ListView(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      children: birthdayList.map((e) => _buildCard(e)).toList(),
    );
  }

  Widget _buildCard(NewJoineeModel model){
    return Padding(
      padding: EdgeInsets.all(2.0.dw),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(5.0.dw),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 60.dw,
                width: 60.dw,
                child: Image.network(model.photo,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0.0.dw),
                child: SizedBox(
                  width: 120.dw,
                  child: Text("${model.firstName} ${model.lastName}",
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.fade,),
                ),
              ),
              Text(model.joiningDate, style: TextStyle(fontSize: 12.dw),),
              Text(model.departName, style: TextStyle(fontSize: 12.dw),),
            ],
          ),
        ),
      ),
    );
  }
}

class WorkAnniversery extends StatefulWidget {
  const WorkAnniversery({Key? key}) : super(key: key);

  @override
  State<WorkAnniversery> createState() => _WorkAnniversery();
}

class _WorkAnniversery extends State<WorkAnniversery> {

  late EmployeeBirthDetailBloc employeeBirthDetailBloc;

  late SendwishesBloc sendwishesBloc;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  late final LoginModel user;

  @override
  void initState() {
    final homePageService = Provider.of<HomePageService>(context, listen: false);
    employeeBirthDetailBloc = EmployeeBirthDetailBloc(homePageService);
    sendwishesBloc = SendwishesBloc(homePageService);
    employeeBirthDetailBloc.init();
    user = Provider.of<LoginService>(context, listen: false).getCurrentUser!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Container(
        width: ScreenSizeConfig.getFullWidth,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/welcome.jpg"), fit: BoxFit.fill, opacity: 0.6)
        ),
        child: _buildBody(),
      ),
    );
  }

  _buildBody(){
    return BlocConsumer<EmployeeBirthDetailBloc, EmployeeBirthDetailState>(
      bloc: employeeBirthDetailBloc,
      listener: (_, state){},
      builder: (_, state){
        return state.when(
            loading: _buildLoading,
            content: _buildContent,
            success: _buildContent,
            failed: (form, __) => _buildContent(form)
        );
      },
    );
  }

  Widget _buildLoading(EmployeeBirthDetailModel model){
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildContent(EmployeeBirthDetailModel model){
    final birthdayList = model.emp_workanniversary;
    return ListView(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      children: birthdayList.map((e) => _buildCard(e)).toList(),
    );
  }

  Widget _buildCard(WorkAnniversaryModel model){
    return Padding(
      padding: EdgeInsets.all(2.0.dw),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60.dw,
              width: 60.dw,
              child: Image.network(model.photo,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(0.0.dw),
              child: SizedBox(
                width: 120.dw,
                child: Text("${model.firstName} ${model.lastName}",
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.fade,),
              ),
            ),
            Row(
              children: [
                Text(model.joiningDay, style: TextStyle(fontSize: 12.dw),),
                Text("  ", style: TextStyle(fontSize: 12.dw),),
                Text(model.joiningMonth, style: TextStyle(fontSize: 12.dw),),
              ],
            ),
            Text(model.departmentName, style: TextStyle(fontSize: 12.dw),),
            Text("${model.employeeAge}  years" , style: TextStyle(fontSize: 12.dw,),),
           _buildElevatedbutton(model),
          ],
        ),
      ),
    );
  }

  _buildElevatedbutton(WorkAnniversaryModel model) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(8.0.dw),
        child:  ElevatedButton(
            onPressed: (){
              _sendWishes(model);
            },
            style: ElevatedButton.styleFrom(
                fixedSize: Size(100.dw, 0.dh),
                padding: EdgeInsets.zero
            ),
            child: Text("Send Wishes", style: TextStyle(fontSize: 12.dw),))
      ),
    );
  }

  void _sendWishes(WorkAnniversaryModel model) async {
    final data = {
      'emp_cd': model.employeeNumber,
      'unit_cd': model.unit,
      'type': "anniversary",
      'current_user' : user.emp_cd
    };
    await sendwishesBloc.sendWishes(data);
    final state = sendwishesBloc.state;
    state.maybeWhen(
        success: (model, message) {
          ScaffoldMessenger.of(scaffoldKey.currentContext!)
              .showSnackBar(SnackBar(
              content: Text(
                message!,
                style: const TextStyle(color: Colors.white),
              )));
        },
        failed: (model, message) {
          ScaffoldMessenger.of(scaffoldKey.currentContext!)
              .showSnackBar(SnackBar(content: Text(message)));
        },
        orElse: () {});
  }
  //
  // void _sendWishes(WorkAnniversaryModel model) async {
  //   final data = {
  //     'emp_cd': model.employeeNumber,
  //     'unit_cd': model.unit,
  //     'type': "anniversary",
  //   };
  //   await sendwishesBloc.sendWishes(data);
  // }
}



