import 'dart:async';
import 'dart:convert';
import 'dart:io';
import '../errors/api_error.dart';
import '../model/approvedleave_model.dart';
import '../model/employeeleavetype_model.dart';
import '../model/requestleave_model.dart';
import 'constant.dart';
import 'package:http/http.dart' as http;

class LeaveService {

  Future<RequestLeaveModel?> getLeaveData(String employerCode, String unitCode,) async {
    const url = '${root}leave-create';
    final body = {'emp_cd': employerCode, 'unit_cd': unitCode,};
    try {
      final response = await http.post(Uri.parse(url),
          body: json.encode(body), headers: getHeaders());
      final responseBody = json.decode(response.body);
      return RequestLeaveModel.fromJson(responseBody["result"]);
    } catch (e) {
      _handleError(e);
    }
    return null;
  }

  Future<EmployeeLeavetypeModel?> getLeavetypeData(String employerCode, String unitCode, String finyear)async{
    const url = '${root}leave-list';
    final body = {'emp_cd': employerCode, 'unit_cd' : unitCode, 'fin_year': finyear};
    try{
      final response = await http.post(Uri.parse(url), body:  json.encode(body), headers:  getHeaders());
      final responseBody = json.decode(response.body);
      return EmployeeLeavetypeModel.fromJson(responseBody["result"]);
    }catch(e){
      _handleError(e);
    }
    return null;
  }

  Future<String?> getApplyLeave(Map<String, dynamic>data) async {
    const url = '${root}leave-create/save-leave';
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
      _handleError(e);
    }
    return null;
  }

  //Approval Page Api

  Future<List<ApprovedLeaveModel>> getApprovalDetail(String employeeCode, String unitCode) async {
    const url = '${root}reporting-apporval-list';
    final body = {
      "emp_cd" : employeeCode,
      "unit_cd" : unitCode
    };
    try {
      final response = await http.post(Uri.parse(url),body: json.encode(body), headers: getHeaders());
      final responseBody = json.decode(response.body);
      if (responseBody['status'] == true) {
        final itemList = responseBody['result'] as List;
        return itemList.map((e) => ApprovedLeaveModel.fromJson(e)).toList();
      }
    } catch (e) {
      _handleError(e);
    }
    return [];
  }

  //Team Leader Leave Approve And Rejected

  Future<String?> getAprovalRejectionData(Map<String, dynamic>data) async {
    const url = '${root}leave-approved-reject';
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
    if (e is String) throw e;
    if (e is SocketException) throw ApiError.internet();
    if (e is TimeoutException) throw ApiError.timeOut();
    if (e is ApiError) throw e;
    throw ApiError.unKnown();
  }
}