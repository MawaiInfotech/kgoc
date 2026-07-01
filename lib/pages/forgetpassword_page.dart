import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:trisquare_locus/utils/screen_size_config.dart';

import '../bloc/forgetpassword_bloc.dart';
import '../service/forgetpasswrod_service.dart';
import '../state/forgetpassword_state.dart';
import '../themes/app_colors.dart';
import '../widgets/app_top_bar.dart';
import 'otpverification_page.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {

  TextEditingController employeeCodeController = TextEditingController();

  late ForgetpasswordBloc forgetpasswordBloc;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState(){
    super.initState();
    final forgetpasswordService = Provider.of<ForgetpasswordService>(context, listen: false);
    forgetpasswordBloc = ForgetpasswordBloc(forgetpasswordService);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.grey.shade100,
      appBar: const AppTopBar(title: "Forget Password"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 40.dw,),
              Padding(
                padding: EdgeInsets.all(8.0.dw),
                child: Image.asset("assets/images/verification-2.png",scale: 6.dw,),
              ),
              _buildText("Please enter your username to receive a verification code on your email and mobile number."),
                _buildTextField(),
              _buildButton()
              ],
            ),
          ),
        ),
      ),
    );
  }


  _buildText(String title){
    return Padding(
      padding:EdgeInsets.only(top: 10.dw),
      child: SizedBox(
          width: ScreenSizeConfig.getFullWidth/1.1,
          child: Text(title,textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.dw, fontWeight: FontWeight.w500),)),
    );
  }

  _buildTextField(){
    return    Padding(
      padding: EdgeInsets.all(10.0.dw),
      child: SizedBox(
        width: ScreenSizeConfig.getFullWidth/1.2,
        child: TextField(
          onTap: (){},
          controller: employeeCodeController,
          decoration: InputDecoration(
              hintText: "Username",
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
    return  Center(
      child: Padding(
        padding: EdgeInsets.all(10.0.dw),
        child: BlocConsumer<ForgetpasswordBloc, ForgetpasswordState>(
            bloc: forgetpasswordBloc,
            listener: (_, state){
              state.maybeWhen(
                  success: (_, message){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message??"Something")));
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OTPVerificationPage(employeeCodeController.text)));
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
                        _forgetPassword();
                      },
                      child: const Text("Submit"));});

            }
        ),
      ),
    );
  }

  void _forgetPassword() async {
    final data = {
      'emp_cd': employeeCodeController.text};
    await forgetpasswordBloc.forgetpassword(data);

  }

}
