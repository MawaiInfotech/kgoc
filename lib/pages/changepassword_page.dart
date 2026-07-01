import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trisquare_locus/utils/screen_size_config.dart';
import '../bloc/changepassword_bloc.dart';
import '../model/login_model.dart';
import '../service/forgetpasswrod_service.dart';
import '../service/login_service.dart';
import '../themes/app_colors.dart';
import '../widgets/app_top_bar.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {

  TextEditingController newPassword = TextEditingController();
  TextEditingController oldPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();


  final scaffoldKey = GlobalKey<ScaffoldState>();

  late ChangepasswordBloc changepasswordBloc;

  late final LoginModel user;

  bool showPassword = true;

  bool showConfirmPassword = true;

  late FocusNode passwordFocusNode;

  late FocusNode confirmPasswordFocusNode;


  @override
  void initState(){
    super.initState();
    final forgetpasswordService = Provider.of<ForgetpasswordService>(context, listen: false);
    user = Provider.of<LoginService>(context, listen: false).getCurrentUser!;
    passwordFocusNode = FocusNode();
    confirmPasswordFocusNode = FocusNode();
    changepasswordBloc = ChangepasswordBloc(forgetpasswordService);
  }

  @override
  void dispose() {
    super.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
  }

  void _togglevisibility() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: const AppTopBar(title: "Change Password"),
      body:  SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 20.dw),
                  Padding(
                    padding: EdgeInsets.all(10.0.dw),
                    child: Image.asset("assets/images/mobile-password.png",scale: 4.dw,),
                  ),
                  _buildText("Please enter your new Password."),
                  _buildOldPasswordTextField(),
                  _buildNewpasswordTextField(),
                  _buildConfirmpasswordTextField(),
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
      child: Text(title, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.dw),),
    );
  }

  _buildNewpasswordTextField(){
    return Padding(
      padding: EdgeInsets.all(10.0.dw),
      child: SizedBox(
        width: ScreenSizeConfig.getFullWidth/1.2,
        child: TextField(
          controller: newPassword,
          obscureText: !passwordFocusNode.hasFocus,
          focusNode: passwordFocusNode,
          onTap: (){
            setState((){
              showPassword = !showPassword;
            });
          },
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

  _buildConfirmpasswordTextField(){
    return Padding(
      padding: EdgeInsets.all(10.0.dw),
      child: SizedBox(
        width: ScreenSizeConfig.getFullWidth/1.2,
        child: TextFormField(
          focusNode: confirmPasswordFocusNode,
          obscureText: !showPassword,
          onTap: (){
            setState((){
              FocusScope.of(context).unfocus();
              FocusScope.of(context).requestFocus(confirmPasswordFocusNode);
            });
          },
          controller: confirmPassword,
          decoration: InputDecoration(
              hintText: "Confirm Password",
              contentPadding: EdgeInsets.all(8.dw),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.dw,)
              ),
            suffixIcon: IconButton(
                onPressed: (){
              setState((){
                _togglevisibility();
                showConfirmPassword = !showConfirmPassword;
              });
            }, icon: Icon( showPassword ? Icons.visibility : Icons
                .visibility_off, color: AppColors.red,))
          ),
        ),
      ),
    );
  }

  _buildOldPasswordTextField(){
    return Padding(
      padding: EdgeInsets.all(10.0.dw),
      child: SizedBox(
        width: ScreenSizeConfig.getFullWidth/1.2,
        child: TextField(
          onTap: (){},
          controller: oldPassword,
          decoration: InputDecoration(
              hintText: "Old Password",
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
          if(confirmPassword.text == newPassword.text ){
            _changepassword();
          }
          else if(confirmPassword.text != newPassword.text){
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(
                backgroundColor: AppColors.red,
                content: const Text("New Password and Confirm Password is not same & Password must be of 6 character")));
          }},
        style: ElevatedButton.styleFrom(backgroundColor: AppColors.portalgreyBlue),
        child: Text("Submit", style: TextStyle(fontSize: 18.dw, fontWeight: FontWeight.w400),));
  }

  void _changepassword() async {
    final data = {
      'emp_cd': user.emp_cd,
      'new_password' : confirmPassword.text,
      'old_password' : oldPassword.text
    };
    await changepasswordBloc.changePassword(data);
    final state = changepasswordBloc.state;
    state.maybeWhen(
        success: (model, message) {
          ScaffoldMessenger.of(scaffoldKey.currentContext!).showSnackBar(
              SnackBar(
                  backgroundColor: AppColors.portalgreen,
                  content: Text(message!, style: const TextStyle(color: Colors.white),)));
          Navigator.pop(context);
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
