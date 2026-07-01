import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../errors/api_error.dart';
import '../model/misspunch_model.dart';
import 'constant.dart';

class MisspunchService{

  Future<List<MisspunchModel>> getMisspunchData(String employeeCode, String unitCode)async{
  
   final  body = {'emp_cd': employeeCode, 'unit_cd': unitCode};

   const url = root + 'miss-punch-list';
   
    final response = await http.post(Uri.parse(url),
        body: json.encode(body), headers: getHeaders());
    try{
      final responseBody = json.decode(response.body);
      final itemList = responseBody['result'] as List;
      return itemList.map((e) => MisspunchModel.fromJson(e)).toList();
    }catch(e){
      _handleError;
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