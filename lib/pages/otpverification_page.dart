import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trisquare_locus/utils/screen_size_config.dart';
import '../bloc/otp_verification_bloc.dart';
import '../service/forgetpasswrod_service.dart';
import '../themes/app_colors.dart';
import '../widgets/app_top_bar.dart';
import 'login_page.dart';

class OTPVerificationPage extends StatefulWidget {
   const OTPVerificationPage(this.employeeCode,{Key? key}) : super(key: key);

   final String employeeCode;
  @override
  State<OTPVerificationPage> createState() => _OTPVerificationPageState();
}

class _OTPVerificationPageState extends State<OTPVerificationPage> {

  TextEditingController otpController = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  late OTPVerificationBloc otpVerificationBloc;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState(){
    super.initState();
    final forgetpasswordService = Provider.of<ForgetpasswordService>(context, listen: false);
    otpVerificationBloc = OTPVerificationBloc(forgetpasswordService);
    widget.employeeCode;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppTopBar(title: "OTP Verification"),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 20.dw),
                  Padding(
                    padding: EdgeInsets.all(10.0.dw),
                    child: Image.asset("assets/images/mobile-password.png",scale: 4.dw,),
                  ),
                  _buildText("Please Enter the OTP send on your email."),
                  _buildOtpTextField(),
                  _buildNewpasswordTextField(),
                  _buildButton()
                ],
              ),
            ),
          )
      ),
    );
  }

  _buildText(String title){
    return Padding(
      padding: EdgeInsets.all(10.0.dw),
      child: Text(title, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.dw),),
    );
  }

  _buildOtpTextField(){
    return Padding(
      padding: EdgeInsets.all(10.0.dw),
      child: SizedBox(
        width: ScreenSizeConfig.getFullWidth/1.2,
        child: TextField(
          onTap: (){},
          controller: otpController,
          decoration: InputDecoration(
              hintText: "OTP",
              contentPadding: EdgeInsets.all(8.dw),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.dw,)
              )
          ),
        ),
      ),
    );
  }

  _buildNewpasswordTextField(){
    return Padding(
      padding: EdgeInsets.all(10.0.dw),
      child: SizedBox(
        width: ScreenSizeConfig.getFullWidth/1.2,
        child: TextField(
          onTap: (){},
          controller: newPassword,
          decoration: InputDecoration(
              hintText: "New Password",
              contentPadding: EdgeInsets.all(8.dw),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.dw,)
              )
          ),
        ),
      ),
    );
  }

  _buildConfirmPasswordTextField(){
    return Padding(
      padding: EdgeInsets.all(10.0.dw),
      child: SizedBox(
        width: ScreenSizeConfig.getFullWidth/1.2,
        child: TextField(
          onTap: (){

          },
          controller: confirmPassword,
          decoration: InputDecoration(
              hintText: "Confirm Password",
              //errorText: "Invalid Password",
              contentPadding: EdgeInsets.all(8.dw),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.dw,)
              )
          ),
        ),
      ),
    );
  }

  _buildButton(){
    return   ElevatedButton(
        onPressed: (){
          _otpVerification();
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.portalgreyBlue
        ),
        child:Text("Send OTP"));
  }

  void _otpVerification() async {
    final data = {
      'emp_cd': widget.employeeCode,
      'otp' : otpController.text,
      'new_password' : newPassword.text

    };
    await otpVerificationBloc.otpVerification(data);
    final state = otpVerificationBloc.state;
    state.maybeWhen(
        success: (model, message) {
          ScaffoldMessenger.of(scaffoldKey.currentContext!).showSnackBar(
              SnackBar(
                  backgroundColor: AppColors.portalgreen,
                  content: Text(message!, style: TextStyle(color: Colors.white),)));
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => LoginPage()));
        },
        failed: (model, message) {
          ScaffoldMessenger.of(scaffoldKey.currentContext!)
              .showSnackBar(SnackBar(
              backgroundColor: AppColors.red,
              content: Text(message)));
        },
        orElse: () {});
  }
}
