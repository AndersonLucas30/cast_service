// ignore_for_file: unnecessary_new

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthService {
  Dio dio = new Dio();

  login(name, password) async {
    try{
      return await dio.post('https://autenticacao-flutter.herokuapp.com/authenticate', 
      data: {
        "name": name,
        "password": password
      }, options: Options(contentType: Headers.formUrlEncodedContentType));
    
    }on DioError catch(e){
    Fluttertoast.showToast(
      msg: e.response.data['msg'],
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0
    );
  }
  }
  addUser(name, cnpf, datanasc, email, password) async{
    return await dio.post('https://autenticacao-flutter.herokuapp.com/adduser', data:{
        "name": name,
        "cnpf" : cnpf,
        "nascimento" : datanasc,
        "email" : email,
        "password": password
      }, options:  Options(contentType:  Headers.formUrlEncodedContentType));
  }
  getinfo(token) async{
    dio.options.headers['Authorization'] = 'Bearer $token';
    return await dio.get('https://autenticacao-flutter.herokuapp.com/getinfo');
    
  }
}