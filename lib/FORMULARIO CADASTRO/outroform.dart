// ignore_for_file: deprecated_member_use, prefer_const_constructors, use_key_in_widget_constructors

import 'package:castservice/FORMULARIO%20CADASTRO/adduser.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget{
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


// ignore: prefer_typing_uninitialized_variables
var name, cnpf, datanasc, email, password, token;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         TextField(
           decoration: InputDecoration(labelText: 'Nome Fantasia'),
           onChanged: (val){
             name = val;
           },
         ),
         TextField(
           decoration: InputDecoration(labelText: 'Cpf ou Cnpj'),
           onChanged: (val){
             cnpf = val;
           },
         ),
         TextField(
           decoration: InputDecoration(labelText: 'data nascimento'),
           onChanged: (val){
             datanasc = val;
           },
         ),
         TextField(
           decoration: InputDecoration(labelText: 'email'),
           onChanged: (val){
             email = val;
           },
         ),
         TextField(
           obscureText: true,
           decoration: InputDecoration(labelText: 'senha'),
           onChanged: (val){
             password = val;
           },
         ),
        
          SizedBox(height: 10.0),
         RaisedButton(
           child: Text('ADD user'),
           color: Colors.green,
           onPressed: (){
             AuthService().addUser(name, cnpf, datanasc, email, password).then((val){
                 Fluttertoast.showToast(
                   msg: val.data['msg'],
                 toastLength: Toast.LENGTH_SHORT,
                 gravity: ToastGravity.BOTTOM,
                 timeInSecForIosWeb: 1,
                   backgroundColor: Colors.green,
                 textColor: Colors.white,
                   fontSize: 16.0
                 );
               }
             );
           },
         ),
       ],
     ),
     ),
   );
  }

}