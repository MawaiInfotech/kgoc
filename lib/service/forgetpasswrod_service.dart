import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../errors/api_error.dart';
import 'constant.dart';

class ForgetpasswordService{

  Future<String?> getForgetpassword(Map<String, dynamic>data) async {
    const url = '${root}forget-password';
    final body = data;
   // print(body);
    try {
      final response = await http.post(Uri.parse(url),
          body: json.encode(body), headers: headers);
      final responseBody = json.decode(response.body);
      print(responseBody);
      if (responseBody['status'] == true) {
        return responseBody ['msg'];
      }else{
        throw ApiError.fromResponse(responseBody['msg']);
      }
    } catch (e) {
      _handleError(e);
    }
    return null;
  }

  Future<String?> getOTPVerification(Map<String, dynamic>data) async {
    const url = '${root}otp-password-update';
    final body = data;
    try {
      final response = await http.post(Uri.parse(url),
          body: json.encode(body), headers: headers);
      final responseBody = json.decode(response.body);
      if (responseBody['status'] == true) {
        return responseBody ['msg'];
      }else{
        throw ApiError.fromResponse(responseBody['msg']);
      }
    } catch (e) {
    //  print(e);
      _handleError(e);
    }
    return null;
    // return null;
  }

  Future<String?> getChnagePassword(Map<String, dynamic>data) async {
    const url = root + 'change-password';
    final body = data;
    try {
      final response = await http.post(Uri.parse(url),
          body: json.encode(body), headers: headers);
      final responseBody = json.decode(response.body);
      if (responseBody['status'] == true) {
        return responseBody ['msg'];
      }else{
        throw ApiError.fromResponse(responseBody['msg']);
      }
    } catch (e) {
      print(e);
      _handleError(e);
    }
    // return null;
  }

  _handleError(var e) {
    if (e is String) throw e;
    if (e is SocketException) throw ApiError.internet();
    if (e is TimeoutException) throw ApiError.timeOut();
    if (e is ApiError) throw e;
    throw ApiError.unKnown();
  }
}