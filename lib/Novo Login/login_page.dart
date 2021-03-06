// ignore_for_file: prefer_const_constructors, unused_field, unused_import, unused_local_variable, avoid_print, prefer_typing_uninitialized_variables, deprecated_member_use

import 'dart:convert';

import 'package:castservice/FEED/feed_screen.dart';
import 'package:castservice/FORMULARIO%20CADASTRO/form.dart';
import 'package:castservice/FORMULARIO%20CADASTRO/outroform.dart';
import 'package:castservice/Novo%20Login/home_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget{
  const LoginPage({Key key}) : super (key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

  final _formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();



  @override

  Widget build(BuildContext context){
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'e-mail'
                ),
                controller: _emailController,
                //keyboardType: TextInputType.emailAddress,
                validator: (email){
                  if(email == null || email.isEmpty){
                    return'Por favor, digite seu e-mail';
                  } else if (!RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(_emailController.text))
                                     
                      {                      
                      return 'Por favor, digite um e-mail correto';
                        }
                        return null;
                },
              ),
              TextFormField(
                  decoration: InputDecoration(
                  labelText: 'senha'
                ),
                controller: _passwordController,
               // obscureText: true,
                keyboardType: TextInputType.text,
                validator: (senha){
                  if(senha == null || senha.isEmpty){
                    return 'Por favor, digite sua senha';
                  } else if (senha.length < 2){
                    return 'Por favor, digite uma senha maior que 6 caracteres';
                  }
                  return null;
                },
              ),
              ElevatedButton(onPressed: () async{
                FocusScopeNode currentFocus = FocusScope.of(context);
                if(_formkey.currentState.validate()){
                  bool deuCerto = await login();
                  if(!currentFocus.hasPrimaryFocus){
                    currentFocus.unfocus();
                  }
                  if (deuCerto){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FeedScreen()/* HomePage() */,
                    ),
                    );
                  }else{
                    _passwordController.clear();
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                }

              }, 
              child: Text('ENTRAR '),
              ),

                FlatButton(
                    onPressed:(){

                    } ,
                    child: Text(
                      'esqueci a senha',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    ),


                FlatButton(
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen()));
                    } ,
                    child: Text(
                      'Criar conta',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    ),
          ],
          ),
        ),
        ),
      ),
    );
  }
  final snackBar = SnackBar(content: Text(
      'e-mail ou senha s??o inv??lidos', textAlign: TextAlign.center,
  ), backgroundColor: Colors.redAccent,
  );


  Future<bool> login() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var url = Uri.parse('https://autenticacao-flutter.herokuapp.com/authenticate');
    var resposta  = await http.post(
    url,
    body: {
      'email': _emailController.text,
      'password': _passwordController.text
    },
    );
    if(resposta.statusCode == 200){
      await sharedPreferences.setString('token', "Token ${jsonDecode(resposta.body)['token']}");
      return true;
    } else{
      print(jsonDecode(resposta.body));
      return false;
    }
  }
}