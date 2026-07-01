import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../errors/api_error.dart';
import '../model/noticeboard_model.dart';
import 'constant.dart';

class NoticeboardService{

  Future<List<NoticeboardModel>> getNoticeList(String unitCode)async{
    const url = root+ 'notification-list';
    final body = {"unit_cd" : unitCode};
    try{
      final response = await http.post(Uri.parse(url), headers: getHeaders(), body: json.encode(body));
      final responseBody = json.decode(response.body);
      if(responseBody['status'] == true){
        final itemList = responseBody['data'] as List;
        return itemList.map((e) => NoticeboardModel.fromJson(e)).toList();
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