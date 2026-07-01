import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../errors/api_error.dart';
import '../model/approveoffduty_model.dart';
import '../model/employeeoffdutylist_model.dart';
import '../model/requestoffduty_model.dart';
import 'constant.dart';

class OffdutyService{

  Future<List<EmployeeoffdutyListModel>> getoffdutyData(String employeeCode, String unitCode)async{

    final  body = {'emp_cd': employeeCode, 'unit_cd': unitCode};

    const url = '${root}od-list';

    final response = await http.post(Uri.parse(url),
        body: json.encode(body), headers: getHeaders());
    try{
      final responseBody = json.decode(response.body);
      final itemList = responseBody['data'] as List;
      return itemList.map((e) => EmployeeoffdutyListModel.fromJson(e)).toList();
    }catch(e){
      _handleError;
    }
    return [];
  }

//Approval off Duty

  Future<List<ApproveoffdutyModel>> getApprovalDetail(String employeeCode, String unitCode) async {
    const url = '${root}team-od-list';
    final body = {
      "emp_cd" : employeeCode,
      "unit_cd" : unitCode
    };
    try {
      final response = await http.post(Uri.parse(url),body: json.encode(body), headers: getHeaders());
      final responseBody = json.decode(response.body);
      if (responseBody['status'] == true) {
        final itemList = responseBody['data'] as List;
        return itemList.map((e) => ApproveoffdutyModel.fromJson(e)).toList();
      }
    } catch (e) {
     // print(e);
      _handleError(e);
    }
    return [];
  }


  //Create page
  Future<RequestoffdutyModel?> getOffdutyRequestData(String employerCode, String unitCode,) async {
    const url = '${root}od-create';
    final body = {'emp_cd': employerCode, 'unit_cd': unitCode,};
    print(body);
    try {
      final response = await http.post(Uri.parse(url),
          body: json.encode(body), headers: getHeaders());
      final responseBody = json.decode(response.body);
      print(responseBody);
      return RequestoffdutyModel.fromJson(responseBody["data"]);
    } catch (e) {
     // print(e);
      _handleError(e);
    }
    return null;
  }

  //apply off duty

  Future<String?> getApplyoffDuty(Map<String, dynamic>data) async {
    const url = '${root}od-save';
    final body = data;
    try {
      final response = await http.post(Uri.parse(url),
          body: json.encode(body), headers: getHeaders());
      final responseBody = json.decode(response.body);
      if (responseBody['status'] == true) {
        return responseBody ['message'];
      }else{
        throw ApiError.fromResponse(responseBody['message']);
      }
    } catch (e) {
      // print(e);
      _handleError(e);
    }
    return null;
    // return null;
  }

  //Team Leader Leave Approve And Rejected

  Future<String?> getAprovalRejectionData(Map<String, dynamic>data) async {
    const url = '${root}od-state';
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
    //  print(e);
      _handleError(e);
    }
    return null;
  }

  _handleError(var e) {
    if (e is String) throw e;
    if (e is SocketException) throw ApiError.internet();
    if (e is TimeoutException) throw ApiError.timeOut();
    if (e is ApiError) throw e;
    throw ApiError.unKnown();
  }
}