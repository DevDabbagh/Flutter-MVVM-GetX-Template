import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../Model/TUser.dart';

class DioExample{
  static var instance = DioExample();



  fetchUserData() async{
    var dio =  Dio();
    var loading=false;
    var textController = TextEditingController()  ;


    //calling for request
    loading = true;//UI

    Response<Map<String,dynamic>> response = await dio.get('https://jsonplaceholder.typicode.com/todos/2');
    Response<Map<String,dynamic>> responsePost = await dio.post('https://jsonplaceholder.typicode.com/todos/2',);

    //handle response
    if(response.statusCode == 200){
      TUser tUser =  TUser.fromJson(response.data!);
      print(tUser.toJson());
    }
    loading = false;//UI

  }





  // After loading false and finsihed request (Update UI)
  // 1st - Data on UI
  // 2nd - Progress will finished
}

main() {
  DioExample.instance.fetchUserData();
}