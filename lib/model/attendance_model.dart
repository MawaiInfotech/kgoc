import 'checklogin_model.dart';

class AttendanceModel {
  final String? punchin, punchout, address;
   final  CheckLoginModel? checkInData ,checkOutData;
   final bool? status;

  const AttendanceModel(
      { this.punchin,
         this.address,
         this.punchout,
         this.checkInData,
         this.checkOutData,
         this.status,

      });

  factory AttendanceModel.fromJson(Map<String, dynamic> json) {
    return AttendanceModel(
      punchin: json['punchin'],
        address: json['address'],
        punchout: json['punchout'],
      checkInData: json['checkInData'],
      checkOutData: json['checkOutData'],
      status: json['status'],
    );
  }
}