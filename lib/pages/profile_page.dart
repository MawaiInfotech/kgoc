import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trisquare_locus/utils/screen_size_config.dart';
import '../model/login_model.dart';
import '../routes/app_routes.dart';
import '../service/login_service.dart';
import '../themes/app_colors.dart';
import 'login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  late final LoginModel user;

  @override
  void initState() {
    user = Provider.of<LoginService>(context, listen: false).getCurrentUser!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(flex: 5,),
              Container(
                height: 300.dh,
                width: 300.dw,
                child: Image.asset("assets/images/profile2.png", scale: 3.dw,),
                color: Colors.grey,
              ),
              _buildText(title: user.emp_first_name.toString() + "  " + user.emp_last_name.toString()  + "  "+ user.emp_cd.toString()),
              _buildText(title: "Designation - " + user.description.toString()),
              _buildText(title: "Email - " + user.company_email!),
              _buildChangepass(),
              _buildLogout(),
              const Spacer(flex: 10,)

            ],
          ),
        ),
      ),
    );
  }

  _buildText({required String title}){
    return Padding(
      padding:  EdgeInsets.only(top: 8.dh),
      child: Text(title, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.dw),),
    );
  }

  _buildChangepass(){
    return Padding(
      padding:  EdgeInsets.all(20.0.dh),
      child: ElevatedButton(
          onPressed: (){Navigator.pushNamed(context, AppRoutes.changepassword);},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.portalgreyBlue
          ),
          child: Text("Change Password",style: TextStyle(fontSize: 18.dw))),
    );
  }

  _buildLogout(){
    return ElevatedButton(onPressed: (){showExitPopup();},
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.portaldarkBlue
        ),
        child: Text("Logout", style: TextStyle(fontSize: 18.dw),));
  }

  Future<bool> showExitPopup() async {
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Confirm"),
            content: const Text("Do you want to exit the App ?"),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.bloodred,
                        minimumSize: Size(100.dw, 40.dw)
                      ),
                      child: const Text("No")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                const LoginPage()),
                                (route) => false);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.portalgreen,
                          minimumSize: Size(100.dw, 40.dw)
                      ),
                      child: const Text("Yes"))
                ],
              )

            ],
          );
        }) ??
        false;
  }
}
