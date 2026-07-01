// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:locus/bloc/checkLoginBloc.dart';
// import 'package:locus/routes/app_routes.dart';
// import 'package:locus/service/login_service.dart';
// import 'package:locus/state/checklogin_state.dart';
// import 'package:locus/utils/screen_size_config.dart';
// import 'package:locus/widgets/app_top_bar.dart';
// import 'package:intl/intl.dart';
// import 'package:provider/provider.dart';
// import '../model/login_model.dart';
// import '../themes/app_colors.dart';
// import 'missed_requestlist_page.dart';
// import 'package:http/http.dart' as http;
//
// class GetLocation extends StatefulWidget {
//   const GetLocation({Key? key}) : super(key: key);
//
//   @override
//   State<GetLocation> createState() => _GetLocationState();
// }
//
// class _GetLocationState extends State<GetLocation> {
//
//   late final LoginModel loginModel;
//
//   late LatLng currentPostion;
//
//   String? _currentAddress;
//   Position? _currentPosition;
//
//   TextEditingController remarkController = TextEditingController();
//   String selectedOutput = "Office";
//
//   @override
//   void initState() {
//     loginModel =
//     Provider.of<LoginService>(context, listen: false).getCurrentUser!;
//     context.read<CheckLoginBloc>().init();
//     _getCurrentPosition();
//     _getUserLocation();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppTopBar(title: "Attendance"),
//       body: SafeArea(child: SingleChildScrollView(child: _buildContent())),
//     );
//   }
//
//   Widget _buildContent() {
//     final attendances = context.watch<CheckLoginBloc>().state;
//     final hasCheckIN = attendances.form.checkInData != null;
//     return Column(
//       children: [
//
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               SizedBox(
//                 width: ScreenSizeConfig.getFullWidth / 1.4,
//                 child: Text(
//                   '${_currentAddress ?? ""}',
//                   maxLines: 2,
//                   textAlign: TextAlign.center,
//                   style:
//                   TextStyle(fontWeight: FontWeight.w400, fontSize: 16.dw),
//                 ),
//               ),
//               InkWell(
//                 onTap: () async {
//                   setState(() {
//                     _getCurrentPosition();
//                     print(_getCurrentPosition());
//                   });
//                 },
//                 child: Icon(Icons.refresh),
//               ),
//             ],
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//              _buildCheckOutButton(title: "Get Location"),
//           ],
//         ),
//
//       ],
//     );
//   }
//
//
//   _buildCheckOutButton({required String title}) {
//     return Padding(
//       padding: EdgeInsets.all(8.dw),
//       child: SizedBox(
//         width: ScreenSizeConfig.getFullWidth / 1.2,
//         child: ElevatedButton(
//             onPressed: () {
//               checkInCallback() async {
//                 try {
//                   context.read<CheckLoginBloc>().checkOut(remarkController.text, selectedOutput);
//                   // await CheckLoginBloc.checkIn();
//                   ScaffoldMessenger.of(context).showSnackBar(
//                       const SnackBar(content: Text("Attendance Marked Successfully")));
//                   // Navigator.pop(context);
//                 } catch (error) {
//                   ScaffoldMessenger.of(context)
//                       .showSnackBar(SnackBar(content: Text("$error")));
//                 }
//               }
//             },
//             style: ElevatedButton.styleFrom(
//                 elevation: 10.dw,
//                 primary: AppColors.red,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.dw))),
//             child: Text(
//               title,
//               style: TextStyle(fontSize: 18.dh, fontWeight: FontWeight.w600),
//             )),
//       ),
//     );
//   }
//
//
//   Future<bool> showConfirmationCheckOutDialog() async {
//     checkInCallback() async {
//       try {
//         context.read<CheckLoginBloc>().checkOut(remarkController.text, selectedOutput);
//         // await CheckLoginBloc.checkIn();
//         ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(content: Text("Attendance Marked Successfully")));
//         // Navigator.pop(context);
//       } catch (error) {
//         ScaffoldMessenger.of(context)
//             .showSnackBar(SnackBar(content: Text("$error")));
//       }
//     }
//
//     return await showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             content: const Text("Are you sure you want to Check Out ?"),
//             actions: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: AppColors.red,
//                         minimumSize: Size(80.dw, 50.dh),
//                       ),
//                       onPressed: () {
//                         Navigator.of(context).pop(false);
//                       },
//                       child: const Text("No")),
//                   ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: AppColors.portalgreen,
//                         minimumSize: Size(80.dw, 50.dh),
//                       ),
//                       onPressed: () async {
//                         final isGrantedPermission = await context
//                             .read<CheckLoginBloc>()
//                             .checkIfPermissionIsGiven();
//                         if (isGrantedPermission) {
//                           checkInCallback();
//                           Navigator.pop(context);
//                         } else {
//                           Navigator.pop(context);
//                           showDialog(
//                               context: context,
//                               builder: (_) {
//                                 return Dialog(
//                                   backgroundColor: AppColors.white,
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius:
//                                       BorderRadius.circular(20.dw)),
//                                   child: SizedBox(
//                                     height: 200.dh,
//                                     child: Column(
//                                       mainAxisAlignment:
//                                       MainAxisAlignment.center,
//                                       //mainAxisSize: MainAxisSize.min,
//                                       children: [
//                                         Padding(
//                                           padding: EdgeInsets.all(10.0.dh),
//                                           child: const Text(
//                                               'Location permission is needed to use this feature.'),
//                                         ),
//                                         //SizedBox(height: 10),
//                                         ElevatedButton(
//                                             onPressed: () async {
//                                               final isGrantedPermission =
//                                               await context
//                                                   .read<
//                                                   CheckLoginBloc>()
//                                                   .requestPermission();
//                                               if (isGrantedPermission) {
//                                                 checkInCallback();
//                                                 Navigator.pop(context);
//                                               }
//                                             },
//                                             style: ElevatedButton.styleFrom(
//                                                 primary: AppColors.brown),
//                                             child:
//                                             Text('Check Permisssions')),
//                                       ],
//                                     ),
//                                   ),
//                                 );
//                               });
//                         }
//                       },
//                       child: const Text("Yes")),
//                 ],
//               )
//             ],
//           );
//         }) ??
//         false;
//   }
//
//   void _getUserLocation() async {
//     var position = await GeolocatorPlatform.instance.getCurrentPosition(
//         locationSettings: LocationSettings(accuracy: LocationAccuracy.best));
//     setState(() async {
//       currentPostion = LatLng(position.latitude, position.longitude);
//     });
//   }
//
//   Future<bool> _handleLocationPermission() async {
//     bool serviceEnabled;
//     LocationPermission permission;
//
//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//           content: Text(
//               'Location services are disabled. Please enable the services')));
//       return false;
//     }
//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(content: Text('Location permissions are denied')));
//         return false;
//       }
//     }
//     if (permission == LocationPermission.deniedForever) {
//       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//           content: Text(
//               'Location permissions are permanently denied, we cannot request permissions.')));
//       return false;
//     }
//     return true;
//   }
//
//   Future<void> _getCurrentPosition() async {
//     final hasPermission = await _handleLocationPermission();
//
//     if (!hasPermission) return;
//     await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
//         .then((Position position) {
//       setState(() => _currentPosition = position);
//       _getAddressFromLatLng(_currentPosition!);
//       print(_getAddressFromLatLng(position));
//     }).catchError((e) {
//       debugPrint(e);
//     });
//   }
//
//   Future<void> _getAddressFromLatLng(Position position) async {
//     await placemarkFromCoordinates(
//         _currentPosition!.latitude, _currentPosition!.longitude)
//         .then((List<Placemark> placemarks) {
//       Placemark place = placemarks[0];
//       setState(() {
//         _currentAddress =
//         '${place.name},${place.street},${place.subLocality},${place.subAdministrativeArea}, ${place.postalCode}';
//         print(_currentAddress);
//       });
//     }).catchError((e) {
//       debugPrint(e);
//     });
//   }
// }
