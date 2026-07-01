import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:trisquare_locus/utils/screen_size_config.dart';
import '../bloc/dummysignup_bloc.dart';
import '../service/dummysignup_service.dart';
import '../state/dummysignup_state.dart';
import '../themes/app_colors.dart';
import '../widgets/app_top_bar.dart';
import 'login_page.dart';

class DummySignupPage extends StatefulWidget {
  const DummySignupPage({Key? key}) : super(key: key);

  @override
  State<DummySignupPage> createState() => _DummySignupPageState();
}

class _DummySignupPageState extends State<DummySignupPage> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController = TextEditingController();

  late DummySignupBloc dummySignupBloc;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState(){
    super.initState();
    final dummySignupService = Provider.of<DummySignupService>(context, listen: false);
    dummySignupBloc = DummySignupBloc(dummySignupService);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: const AppTopBar(title: "Signup"),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0.dw),
                  child: Image.asset("assets/images/enrollment.png", scale: 4.dw,),
                ),
                Text("Please fill the following details.", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.dw),),
                _buildTextField("Name", "Name", Icons.person, nameController),
                _buildTextField("Registered Email", "Registered Email", Icons.mail, emailController),
                _buildTextField("Password", "Password", Icons.mobile_friendly, passwordController),
                _buildTextField("Password Confirmation", "Password Confirmation", Icons.mobile_friendly, passwordConfirmationController),
                _buildSignupButton()
              ],
            ),
          )),
    );
  }

  _buildTextField(String title, String label, Icon, TextEditingController controller,) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.dw)),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
              hintText: title,
              label: Text(label),
              labelStyle: TextStyle(
                  fontSize: 16.dh,
                  fontWeight: FontWeight.w600,
                  color: AppColors.orange2),
              //labelText: label,
              focusedBorder: _border(),
              enabledBorder: _border(),
              errorBorder: _border(),
              disabledBorder: _border()),
        ),
      ),
    );
  }
  
  _buildSignupButton(){
    return Padding(
      padding: EdgeInsets.all(10.0.dw),
      child: BlocConsumer<DummySignupBloc, DummySignupState>(
        bloc: dummySignupBloc,
        listener: (_, state){
          state.maybeWhen(
              success: (_, message){
                showConfirmationCheckOutDialog(message!);
               // ScaffoldMessenger.of(scaffoldKey.currentContext!).showSnackBar(SnackBar(content: Text(message!)));

              },
              failed: (_, message){
                ScaffoldMessenger.of(scaffoldKey.currentContext!).showSnackBar(SnackBar(content: Text(message)));
              }, orElse:(){});
        },
        builder: (context, state){
          return state.maybeWhen(
              loading: (_){
                return const CircularProgressIndicator();
              },
              orElse: (){
               return  ElevatedButton(
                    onPressed: (){
                      _signup();
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: AppColors.bottlegreen,),
                    child: Text("Signup", style: TextStyle(fontSize: 20.dw, fontWeight: FontWeight.w600),));

              });
        },
      ),
    );
  }

  void _signup() async {
    final data = {
      'name': nameController.text,
      'reg_email_id': emailController.text,
      'password': passwordController.text,
      'password_confirmation': passwordConfirmationController.text,
    };
    await dummySignupBloc.signup(data);

  }

  Future<bool> showConfirmationCheckOutDialog(String userCode) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return Container(
            height: 300.dw,
            child: AlertDialog(
              content: Container(
                height: 200.dh,
                child: Column(
                  children: [
                    Text("You can use the following UserID as user code to login : "),
                    SizedBox(height: 20.dh,),
                    Text(userCode, style: TextStyle(fontSize: 18.dw, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              actions: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.red,
                      minimumSize: Size(80.dw, 50.dh),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => LoginPage()));
                    },
                    child: const Text("Ok"))
              ],
            ),
          );
        }) ??
        false;
  }

  _border() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.dw),
      borderSide: const BorderSide(color: Colors.white));
}
