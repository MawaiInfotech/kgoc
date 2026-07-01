import 'package:hive/hive.dart';

 // const root = 'http://103.25.128.214:60/api/';
 const root = 'http://112.196.13.4:6060/api/';
//const root = 'http://192.168.1.244:90/api/';
//const root = 'http://103.25.128.214:76/api/';
//const root = 'http://45.64.8.46:63/api/';

const headers = <String, String>{
  'Accept': 'Application/json',
  'Content-Type' : 'Application/json',
};

Map<String, String> getHeaders() {
  final token = Hive.box("token_box").get("token");
  // print(token);
//final token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC80NS42NC44LjQ2OjYzXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjU5NzI0NDgyLCJleHAiOjE2NTk3MjgwODIsIm5iZiI6MTY1OTcyNDQ4MiwianRpIjoiVUFBaTZMU1ptZjBqMGhiSSIsInN1YiI6NTcsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.WGPi8tDAJu4eV8w6AattdDiVaQQBlDcdWkLBjVuV_Xk';
  return {
    'Accept': 'Application/json',
    'Content-Type': 'Application/json',
    "Authorization": "Bearer $token"
  };
}
