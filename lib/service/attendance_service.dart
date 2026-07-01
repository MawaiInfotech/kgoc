import 'dart:async';
import 'dart:convert';
import 'dart:io' as Io;
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import '../errors/api_error.dart';
import '../model/attendance_detail_supp_model.dart';
import '../model/checklogin_model.dart';
import '../model/checkloginform_model.dart';
import '../model/teamattendance_supp_model.dart';
import '../model/teamleader_attendanceApprove_model.dart';
import 'constant.dart';

class AttendanceService {




  Future<CheckLoginModelForm?> getCheckLogin() async {

    final date = DateFormat("yyyy-MM-dd").format(DateTime.now());
    final body = {"sysdate": date};
    const url = "${root}checklogin";
    print("body => $body");
    final response = await http.post(Uri.parse(url), body: json.encode(body), headers: getHeaders());
    try {
      final responseBody = json.decode(response.body);
      final checkIN = responseBody["checkInData"];
      final checkOut = responseBody["checkOutData"];
      print(responseBody);
      if (checkIN is String) {
        if (checkIN.isEmpty) responseBody["checkInData"] = null;
      }
      if (checkOut is String) {
        if (checkOut.isEmpty) responseBody["checkOutData"] = null;
      }
      CheckLoginModelForm models = CheckLoginModelForm.fromJson(responseBody);

      if (models.status == true) {
        return models;
      }else{
        CheckLoginModelForm models1 = CheckLoginModelForm();
        models1.status == true;
        models1.checkInData?.officepunch=="";
        models1.checkInData?.address=="";
        models1.checkOutData?.officepunch=="";
        models1.checkOutData?.address=="";
        return models;
      }
    } catch (e) {
      CheckLoginModelForm models1 = CheckLoginModelForm();
      models1.status == true;
      models1.checkInData?.officepunch=="";
      models1.checkInData?.address=="";
      models1.checkOutData?.officepunch=="";
      models1.checkOutData?.address=="";
      return models1;
    }
  }

  Future<Map<String, dynamic>?>  getAttendance(String status, String remark, String site, String address, file) async {
    const url = '${root}checkin-checkout';
  //  bool isCamera = Hive.box("token_box").get("isCamera", defaultValue: false) ?? false;
    final bytes = Io.File(file).readAsBytesSync();
    String img64 = base64Encode(bytes);
   // print("isCamera => $isCamera");

    // if (file == null || file.toString().isEmpty) {
    //   print("Image file missing");
    //   return null;
    // }

    String getBase64FileExtension(String img64) {
      switch (img64.characters.first) {
        case '/':
          return 'jpeg';
        case 'i':
          return 'png';
        case 'R':
          return 'gif';
        case 'U':
          return 'webp';
        case 'J':
          return 'pdf';
        default:
          return 'unknown';
      }
    }

   String type = getBase64FileExtension(img64);

    try {
      final location = await Geolocator.getCurrentPosition();
      final body = {
        "lat": location.latitude,
        "long": location.longitude,
        "status": status,
        "remark" : remark,
        "site" : site,
     //   "image" : isCamera ? "data:image/$type;base64,$img64" : "",
        "image" :   "data:image/$type;base64,$img64" ,
        "address" : address
      };
      print(getHeaders());
      print(body);

      final response = await http.post(Uri.parse(url), body: json.encode(body), headers: getHeaders());
      final responseBody = json.decode(response.body);
      print(response.body);
      if (responseBody['status'] == false) {
        throw ApiError.fromResponse(responseBody['message']);
      }
      if (status == "in") {
        responseBody["officepunch"] = responseBody['punchin'];
      }
      if (status == "out") {
        responseBody["officepunch"] = responseBody['punchout'];
      }
      return {"model":CheckLoginModel.fromJson(responseBody), "message": responseBody["message"]};
    } catch (e) {
      _handleError(e);
    }
    return null;
  }

  Future<Map<String, dynamic>?>  getAttendance1(String status, String remark, String site, String address,) async {
    const url = '${root}checkin-checkout';
    //  bool isCamera = Hive.box("token_box").get("isCamera", defaultValue: false) ?? false;

    // print("isCamera => $isCamera");

    // if (file == null || file.toString().isEmpty) {
    //   print("Image file missing");
    //   return null;
    // }


    try {
      final location = await Geolocator.getCurrentPosition();
      final body = {
        "lat": location.latitude,
        "long": location.longitude,
        "status": status,
        "remark" : remark,
        "site" : site,
        //   "image" : isCamera ? "data:image/$type;base64,$img64" : "",
        "image" :   "" ,
        "address" : address
      };
      print(getHeaders());
      print(body);

      final response = await http.post(Uri.parse(url), body: json.encode(body), headers: getHeaders());
      final responseBody = json.decode(response.body);
      print(responseBody);
      if (responseBody['status'] == false) {
        throw ApiError.fromResponse(responseBody['message']);
      }
      if (status == "in") {
        responseBody["officepunch"] = responseBody['punchin'];
      }
      if (status == "out") {
        responseBody["officepunch"] = responseBody['punchout'];
      }
      return {"model":CheckLoginModel.fromJson(responseBody), "message": responseBody["message"]};
    } catch (e) {
      _handleError(e);
    }
    return null;
  }

  Future<AttendanceDetailSuppModel> getAttendanceDetail(String month) async {
    const url = '${root}get-attendance';
    final body = {
      "month" : month
    };
    try {
      final response = await http.post(Uri.parse(url), body: json.encode(body),headers: getHeaders());
      final responseBody = json.decode(response.body);
    return AttendanceDetailSuppModel.fromJson(responseBody["data"]);
    } catch (e) {
      _handleError(e);
    }
    return const AttendanceDetailSuppModel();
  }

  Future<String?> getRequestData(String employerCode, String unitCode,
      String cardNumber, String reason, String missPunchDate, String missPunchType, String misspunchIn, String misspunchOut) async {
    const url = '${root}miss-punch-update';
    final body = {
      'emp_cd': employerCode,
      'unit_cd': unitCode,
      'card_no': cardNumber,
      'reason': reason,
      'miss_punch_date': missPunchDate,
      'mis_punch_type': missPunchType,
      'miss_punch_intime': misspunchIn,
      'miss_check_out_time': misspunchOut,
    };
    try {
      final response = await http.post(Uri.parse(url), body: json.encode(body), headers: getHeaders());
      final responseBody = json.decode(response.body);
      if (responseBody['status'] == true) {
        return responseBody ['message'];
      }else{
        throw ApiError.fromResponse(responseBody['message']);
      }
    } catch (e) {
      _handleError(e);
    }
    return null;
  }


  //Team Attendance

  Future<TeamAttendanceSuppModel> getTeamAttendanceData(String employeeCode, String month)async{
    const url = '${root}serch-team-attend';
    final body = {
      "emp_number" : employeeCode,
      "month" : month
    };
    try{
      final response = await http.post(Uri.parse(url),
          body: json.encode(body), headers:  getHeaders());
      final responseBody = json.decode(response.body);
      return TeamAttendanceSuppModel.fromJson(responseBody["data"]);
    }catch(e){
      _handleError(e);
    }
    return  const TeamAttendanceSuppModel() ;
  }

  //Team Attendance Approval

  Future<List<TeamLeaderAttendanceApprovelModel>> getTeamAttendanceList(String employeeCode, String unitCode) async {
    const url = '${root}attedance-approval-list';
    final body = {
      "emp_cd" : employeeCode,
      "unit_cd" : unitCode
    };
    try {
      final response = await http.post(Uri.parse(url),body: json.encode(body), headers: getHeaders());
      final responseBody = json.decode(response.body);
      if (responseBody['status'] == true) {
        final itemList = responseBody['data'] as List;
        return itemList.map((e) => TeamLeaderAttendanceApprovelModel.fromJson(e)).toList();
      }
    } catch (e) {
      _handleError(e);
    }
    return [];
  }

  //Team Attendance Approval Rejection Data

  Future<String?> getAprovalRejectionData(Map<String, dynamic>data) async {
    const url = '${root}attedance-approved-reject';
    final body = data;
    try {
      final response = await http.post(Uri.parse(url),
          body: json.encode(body), headers: getHeaders());
      final responseBody = json.decode(response.body);
      if (responseBody['status'] == true) {
        return responseBody ['message'];
      } else {
        throw ApiError.fromResponse(responseBody['message']);
      }
    } catch (e) {
      _handleError(e);
    }
    return null;
  }

  _handleError(var e) {
    if (e is String) throw ApiError.fromResponse(e);
    if (e is SocketException) throw ApiError.internet();
    if (e is TimeoutException) throw ApiError.timeOut();
    if (e is ApiError) throw e;
    throw ApiError.unKnown();
  }
}
