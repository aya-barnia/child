import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LoginApi{
static const storage = FlutterSecureStorage();



UserId(String id) async {
  await storage.write(key: 'id', value: id);
}
Future getUserId () async {
  return await storage.read(key: 'id');
}
Future getUser () async {
  return await getUserId();
}

storeToken(String access) async {
  await storage.write(key: 'access' , value: access);
}
Future getToken () async {
  return await storage.read(key: 'access');
}


Dio dio =  Dio(
  BaseOptions(
    baseUrl: "http://192.168.1.114:8000",
    connectTimeout: const Duration(seconds: 50),
    receiveTimeout: const Duration(seconds: 50),
  ),
);

Future <RESPONSE> log(Map<String,dynamic> datalogin)async{
  try{
    print(datalogin);
    FormData dataloginform =FormData.fromMap(datalogin);
    print ("datalogin ${datalogin}");
    Response response=await dio.post('/api/user_register/child/login',data:dataloginform);

    if(response.statusCode == 200){

    print("token ${response.data['message']}");
    print("account_type ${response.data['status']}");

      return  response.data['account_type'];//RESPONSE(Success: 'true', message: response.data['account_type']);
    }
    else {
      print('2api');
    }
    return response.data['status'];//RESPONSE(Success: false, message: response.data['message']);

  }
  on DioException catch(e){
    print('ppp876');
    if(e.response!=null)
      print(e.response);
    else
      print(e.toString());

    return RESPONSE(Success: false, message: 'error to send login request');

  }
}

}

// String url = "http://192.168.1.1:37992/api/";
// String url = "http://127.0.0.1:8000/api/";
// String url = "http://127.0.0.1/api/";
String url = "http://192.168.1.114:8000/api/";



class RESPONSE {

  late bool Success;

  late String message;

  RESPONSE({required this.Success, required this.message});

}