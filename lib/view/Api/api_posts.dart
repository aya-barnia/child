


import 'package:dio/dio.dart';

class ApiPosts{

Dio dio = Dio(
  BaseOptions(
    
    baseUrl: 'http://192.168.1.114:8000/api/',
    connectTimeout:  const Duration(seconds: 50),
    receiveTimeout:  const Duration(seconds: 50)
    
    )
  );


  //Future<List<dynamic>> addPost(Map<String,dynamic> post) async {

  Future<dynamic> addPost(Map<String,dynamic> post) async {

    print('here first add post api');
    print(post.toString());
    try{
     // String? token = await apiLog.getToken();
     //print(token);
     FormData formData = FormData.fromMap(post);
     Response response = await dio.post('posts',
    //  options: Options(
    //   headers: {
    //     'Accept':'application/json',
    //     'Authorization':'Bearer $token'
    //   }
    //  ),
     data: formData,
     );
     if(response.statusCode == 200){
      return response.data['data'];
     }
        else{
          print('i am in else');
          return [];
            }
         }
         catch(e){
          print('in catch ${e.toString()}');

    }
  }


}


class RESPONCE {

late bool status;
late String message;

RESPONCE({required this.status ,required this.message});


}