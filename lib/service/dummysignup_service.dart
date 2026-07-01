import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import '../errors/api_error.dart';
import '../model/dummylocationlist_model.dart';
import '../service/constant.dart';

class DummySignupService{

  Future<String?> getSignup(Map<String, dynamic>data) async {
    const url = root + 'registerapp';
    final body = data;
    try {
      final response = await http.post(Uri.parse(url),
          body: json.encode(body), headers: headers);
      final responseBody = json.decode(response.body);
      if (responseBody['status'] == true) {
        return responseBody ['message'];
      }else{
        throw ApiError.fromResponse(responseBody['message']);
      }
    } catch (e) {
      print(e);
      _handleError(e);
    }
    // return null;
  }


  //Attendance Page List

  Future<List<DummyLocationlistModel>> getDummyLocationList() async {
    const url = root + 'get-location';
    try {
      final response = await http.get(Uri.parse(url),headers: getHeaders());
      final responseBody = json.decode(response.body);
      if (responseBody['status'] == true) {
        final itemList = responseBody['checkInData'] as List;
        return itemList.map((e) => DummyLocationlistModel.fromJson(e)).toList();
      }
    } catch (e) {
      print(e);
      _handleError(e);
    }
    return [];
  }


  //mark Attendance

  Future<String?>  getAttendance() async {
    const url = root + 'checkin-apple';
    try {
      final location = await Geolocator.getCurrentPosition();
      final body = {
        "lat": location.latitude,
        "long": location.longitude,
      };
      final response = await http.post(Uri.parse(url),
          body: json.encode(body), headers: getHeaders());

      final responseBody = json.decode(response.body);
      if (responseBody['status'] == true) {
        return responseBody ['message'];
      }else{
        throw ApiError.fromResponse(responseBody['message']);
      }
    } catch (e) {
      print(e);
      _handleError(e);
    }
  }

  _handleError(var e) {
    if (e is String) throw e;
    if (e is SocketException) throw ApiError.internet();
    if (e is TimeoutException) throw ApiError.timeOut();
    if (e is ApiError) throw e;
    throw ApiError.unKnown();
  }
}