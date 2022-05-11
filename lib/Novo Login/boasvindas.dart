// ignore_for_file: unused_import, unused_local_variable, non_constant_identifier_names, prefer_const_constructors

import 'package:castservice/Novo%20Login/home_page.dart';
import 'package:castservice/Novo%20Login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BoasVindasPage extends StatefulWidget{
  const BoasVindasPage({Key key}) : super (key: key);

  @override
  _BoasVindasPageState createState() => _BoasVindasPageState();
}

class _BoasVindasPageState extends State<BoasVindasPage>{

@override 
void initState(){
  super.initState();
  VerificarToken().then((value) {
    if(value){
      Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (context) => HomePage(),     
      ),
      );
    }else{
 Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (context) => LoginPage(),     
      ),
 );
    }
  }); 
}



  @override

  Widget build(BuildContext context){
    return Scaffold(
      body: Container(),
    );
  }


  Future<bool> VerificarToken() async{
    SharedPreferences sharedPreference = await SharedPreferences.getInstance();

    if(sharedPreference.getString('token') == null){
      return false;
    }else{
      return true;
    }


    }
  }




