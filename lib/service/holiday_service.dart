import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../errors/api_error.dart';
import '../model/holiday_model.dart';
import 'constant.dart';

class HolidayService{

  Future<List<HolidayModel>> getHolidayList(String unitCode)async{
    const url = '${root}holiday-list';
    final body = {"unit_cd" : unitCode};
    try{
      final response = await http.post(Uri.parse(url), headers: getHeaders(), body: json.encode(body));
      final responseBody = json.decode(response.body);
      if(responseBody['status'] == true){
        final itemList = responseBody['data'] as List;
        return itemList.map((e) => HolidayModel.fromJson(e)).toList();
      }
    }catch(e){
      _handleError(e);
    }
    return [];
}
  _handleError(var e) {
    if (e is String) throw e;
    if (e is SocketException) throw ApiError.internet();
    if (e is TimeoutException) throw ApiError.timeOut();
    if (e is ApiError) throw e;
    throw ApiError.unKnown();
  }
}