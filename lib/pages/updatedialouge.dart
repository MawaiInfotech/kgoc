// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:locus/utils/screen_size_config.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// import '../themes/app_colors.dart';
//
// class UpdateDialog extends StatefulWidget {
//
//   final String appLink;
//
//   const UpdateDialog({Key? key, required this.appLink,}) : super(key: key);
//
//   @override
//   State<UpdateDialog> createState() => _UpdateDialogState();
// }
//
// class _UpdateDialogState extends State<UpdateDialog> {
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedContainer(
//       duration: Duration(milliseconds: 500),
//       curve: Curves.fastLinearToSlowEaseIn,
//       // height: 200.dh,
//       // width: 200.dw,
//       child: Dialog(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20.dw)
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         child: content(context) ,
//       ),
//     );
//   }
//
//   Widget content(BuildContext context){
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
//           height: 80.dh,
//           width: 400.dw,
//           decoration: BoxDecoration(
//               color: AppColors.red,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(20.dw),
//               topRight: Radius.circular(20.dw),
//             )),
//           child: Center(
//             child: Icon(Icons.error,color: AppColors.white,size: 50.dw,),
//           ),
//         ),
//         Container(
//           height: 200.dh,
//           width: 400.dw,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(20.dw),
//               bottomRight: Radius.circular(20.dw)
//             ),
//             color: AppColors.white,
//           ),
//           child: ClipRRect(
//             borderRadius: BorderRadius.only(
//               bottomRight: Radius.circular(20.dw),
//               bottomLeft: Radius.circular(20.dw)
//             ),
//             child: Column(
//               children: [
//                 Expanded(
//                   flex: 2,
//                     child: Container(
//                       color: AppColors.white,
//                       child: Padding(
//                         padding: EdgeInsets.all(8.0.dw),
//                         child: Center(
//                           child: Text("New Version is available in the store, Update now!",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                             fontWeight: FontWeight.w500, fontSize: 18.dw
//                           ),),
//                         ),
//                       )
//                 )),
//                 Expanded(
//                   flex: 1,
//                     child: Container(
//                       color: AppColors.white,
//                       child: Padding(padding: EdgeInsets.all(10.dw),
//                       child: GestureDetector(
//                         onTap: () async{
//                           await launchUrl(Uri.parse(widget.appLink));
//                         },
//                         child: Container(
//                           height: 40.dw,
//                           width: 250.dw,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10.dw),
//                             color: AppColors.portaldarkBlue
//                           ),
//                           child: Center(
//                             child: Text("Update",
//                               style: TextStyle(fontSize: 20.dw,
//                                   fontWeight: FontWeight.w600, color: AppColors.white),),
//                           ),
//                         ),
//                       ),
//                       ),
//                 )),
//               ],
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
