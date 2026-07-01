import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trisquare_locus/utils/screen_size_config.dart';
import '../bloc/login_bloc.dart';
import '../model/login_form.dart';
import '../routes/app_routes.dart';
import '../service/login_service.dart';
import '../state/login_state.dart';
import '../themes/app_colors.dart';
import '../widgets/app_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool checkBoxValue = false;

  late final LoginPageBloc bloc;

  TextEditingController passwordController = TextEditingController();

  final textFieldFocusNode = FocusNode();

  @override
  void initState() {
    final loginService = Provider.of<LoginService>(context, listen: false);
    bloc = LoginPageBloc(loginService);
    getData();
    bloc.init();
    super.initState();
    //checkVersion();
  }

  // void checkVersion() async{
  //
  //   // Instantiate NewVersion manager object (Using GCP Console app as example)
  //   final newVersion = NewVersion(
  //     iOSId: 'com.shilpi.locusmawai.shilpi',
  //     androidId: 'com.shilpi.locusmawai.shilpi',
  //   );
  //   final status = await newVersion.getVersionStatus();
  //   newVersion.showUpdateDialog(
  //     context: context,
  //     versionStatus: status!,
  //     dialogTitle: "UPDATE!!!",
  //     dialogText: "Please update the app from  ${status.localVersion} to ${status.storeVersion}",
  //     dismissAction: (){
  //       SystemNavigator.pop();
  //     },
  //     updateButtonText: "Update Now",
  //     dismissButtonText: "",
  //
  //   );
  //   print("DEVICE ==> " +status.localVersion);
  //   print("STORE ==> " +status.storeVersion);
  // }

  bool permissionPopupLogin = false;

  getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      permissionPopupLogin = prefs.getBool("permissionPopupLogin") ?? false;
      if (!permissionPopupLogin) {
        _showDialog();
      }
    });
   // print(permissionPopupLogin);
  }

  _showDialog() async {
    await Future.delayed(const Duration(milliseconds: 50));
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
                "Permission Policy\n We will be needing in this app ?"),
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
                      prefs.setBool("permissionPopupLogin", true);
                      Navigator.pop(context);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: AppColors.brown,
          child: Text(
            "© Mawai infotech Ltd. All Rights Reserved",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.dw),
          ),
        ),
        body: SafeArea(
            child: Center(
          child: BlocConsumer<LoginPageBloc, LoginPageState>(
            bloc: bloc,
            listener: (_, state) {
              final isSuccess =
                  state.maybeWhen(success: (_) => true, orElse: () => false);
              if (isSuccess) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Login Successfully"),
                  duration: Duration(milliseconds: 500),
                ));
                final userFroms = Hive.box("userFrom").get("userFrom");
                if(userFroms=="R") {
                  Navigator.popAndPushNamed(context, AppRoutes.dummyattendancepage);
                } else{
                  Navigator.popAndPushNamed(context, AppRoutes.navigationPage);
               }
              }
              final hasFailed =
                  state.maybeWhen(failed: (_, __) => true, orElse: () => false);
              if (hasFailed) {
                final message = state.maybeWhen(
                    failed: (_, msg) => msg, orElse: () => null);
                _showSnackBar(message!);
              }
            },
            builder: (_, state) {
              return state.when(
                  loading: _buildLoading,
                  content: _buildContent,
                  success: _buildContent,
                  failed: (form, _) => _buildContent(form));
            },
          ),
        ))
    );
  }

  Widget _buildLoading(LoginForm form) {
    return Stack(
      children: [
        _buildContent(form),
        Container(
            color: Colors.white.withOpacity(.3),
            child: const Center(child: CircularProgressIndicator())),
      ],
    );
  }

  Widget _buildContent(LoginForm form) {
    return ListView(
      children: [
        _buildTitle(),
        _buildLoginText(),
        _buildTextField(form),
        _buildCheckBox(form),
        _buildLoginButton(),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildText(title: "Don't have an account ?"),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.dummysignuppage);
                    },
                    child: Text(
                      "Signup",
                      style: TextStyle(
                          color: AppColors.red2,
                          fontSize: 18.dw,
                          fontWeight: FontWeight.w600),
                    ),),
              ],
            ),
            Text("V 2.2.0+4", style: TextStyle(fontSize: 14.dw),),
          ],
        ),
       
      ],
    );
  }

  _buildTitle() {
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/images/company.jpg',
          height: ScreenSizeConfig.sHeight / 3,
          width: ScreenSizeConfig.getFullWidth,
          fit: BoxFit.cover,
            opacity:  const AlwaysStoppedAnimation(.4)
        ),
        Form(
          child: Container(
            height: ScreenSizeConfig.sHeight / 3,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    stops: const [0.4, 0.9],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      AppColors.white.withOpacity(1)
                    ])),
            //color: Colors.orange.withOpacity(0.3),
          ),
        ),
        Positioned(
            top: 140.dh,
            left: 70.dw,
            // bottom: 0.0.dh,
            child: Image.asset(
              'assets/images/kgoc.png',
              scale: .5,
              height: ScreenSizeConfig.sHeight / 6,
              width: ScreenSizeConfig.getFullWidth / 1.5,
              // height: height * 0.25,
              // width: width,
            )),
      ],
    );
  }

  _buildTextField(LoginForm form) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.only(bottom: 10.dh, top: 20.dh),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.dh)),
          child: AppTextField(
            text: form.userName,
            onSearchChanged: bloc.updateEmployeeCode,
            hintText: 'User Code',
            icon: Icons.person,
          ),
        ),
        Card(
          margin: EdgeInsets.only(bottom: 5.dh, top: 10.dh),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.dh)),
          child: AppTextField(
            text: form.password,
            isPassword: true,
            onSearchChanged: bloc.updatePassword,
            hintText: 'Password',
            icon: Icons.lock,
          ),
        ),
      ],
    );
  }

  _buildLoginText() {
    return Padding(
      padding: EdgeInsets.only(left: 20.0.dw, top: 40.dh),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.red2, Colors.white],
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.topEnd,
            ),
            border:
                Border(left: BorderSide(color: AppColors.red2, width: 4.0.dw))),
        child: Text(
          "Login",
          style: TextStyle(fontSize: 20.0.dh, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  _buildCheckBox(LoginForm form) {
    return Padding(
      padding: EdgeInsets.only(top: 10.dw),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              height: 40.dh,
              //width: 300.dw,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    onChanged: bloc.updateShouldRemeber,
                    value: form.shouldRemember,
                  ),
                  const Text("Remember Me")
                ],
              )),
          _buildForgetPassword()
        ],
      ),
    );
  }

  _buildForgetPassword() {
    return TextButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.forgetpassword);
        },
        child: const Text(
          "Forgot Password",
          style: TextStyle(color: AppColors.red2),
        ));
  }

  _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.black,
        content: Text(message, style: const TextStyle(color: Colors.white))));
  }

  _buildLoginButton() {
    return InkWell(
      onTap: bloc.logIn,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/images/loginbutton.png",
              width: 350.dw,
              height: 100.dh,
            ),
          ),
          Center(
            child: Text(
              "Login",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 25.dw,
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildText({required String title}) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: AppColors.black, fontWeight: FontWeight.w400, fontSize: 14.dh),
    );
  }

}
