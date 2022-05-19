// ignore_for_file: prefer_const_constructors, deprecated_member_use, unused_import, library_prefixes, unused_local_variable, unnecessary_null_comparison, import_of_legacy_library_into_null_safe, avoid_print, missing_required_param
import 'dart:convert';
import 'package:castservice/BANCO DE DADOS/DB/mongodb.dart';
import 'package:castservice/FORMULARIO%20CADASTRO/adduser.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mongo_dart/mongo_dart.dart' as M;
import 'package:castservice/BANCO DE DADOS/modelos/cadastroDB.dart';

class FormCad extends StatefulWidget {
  const FormCad({ Key key }) : super(key: key);

  @override
  _FormCadState createState() => _FormCadState();
}

class _FormCadState extends State<FormCad> {
// ignore: prefer_typing_uninitialized_variables
var nomefantasia, cpnj, datenasc, email, password;
  
 // TextEditingController nomeController = TextEditingController();
 // TextEditingController cnpjcpfController = TextEditingController();
  //TextEditingController datanascimentoController = TextEditingController();
 // TextEditingController emailController = TextEditingController();
 // TextEditingController senhaController = TextEditingController();
  

@override
  //void dispose() {
   // super.dispose();
   // nomeController.dispose();
   // cnpjcpfController.dispose();
   // datanascimentoController.dispose();
   // emailController.dispose();
   // senhaController.dispose();
  
 // }


  @override
  Widget build(BuildContext context) {
   // final User user = ModalRoute.of(context).settings.arguments;
    var widgetText = "Add User";
   // if (user != null) {
     // nomeController.text = user.nome;
    //  cnpjcpfController.text = user.cnpjoucpf.toString();
     // datanascimentoController.text = user.nascimento.toString();
     // emailController.text = user.emailoucelular.toString();
     // senhaController.text = user.senha.toString();
      
   //  widgetText = 'Update User';
   // } 

    return Scaffold(
      backgroundColor: HexColor('#F2DD68'),

      body: Stack(
        children: [
          SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                   IconButton(
                     
                              icon: Icon(Icons.arrow_back),
                              iconSize: 25.0,
                              color: Colors.black,
                              onPressed: () => Navigator.pop(context),
                            ),
                ],
              ),
            
            ),
            
             Container(
               
                padding: EdgeInsets.only(top: 20),
              //color: Colors.red,
             child: Row(
              
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Text(
                  'Cadastro',
                  style: TextStyle(
                    fontFamily: 'Billabong',
                    fontSize: 32.0,
                  ),
                ), 
              
               ],
                ),
               ),
         
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Center(
                // ignore: sized_box_for_whitespace
                child: Container( 
                 // color: Colors.blue,
                  height: 30,  
                ),
              ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: TextField(
                  controller: nomefantasia,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                    labelText: 'Nome Fantasia / Nome',
                    hintText: 'Nome Fantasia da Empresa ou Nome Pessoal'
                    
                  ),
                ),
                ),
                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  //padding: EdgeInsets.only(
                    //left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: TextField(
                      controller: cpnj,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                        labelText: "CNPJ ou CPF",
                        hintText: 'CNPJ da empresa ou CPF'),
                    ),
                  ),
                    Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  //padding: EdgeInsets.only(
                    //left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: TextField(
                      controller: datenasc ,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                         border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                        labelText: "Data de Nascimento",
                        hintText: 'Entre com a data de nascimento'),
                    ),
                  ),
                    Padding(
                 padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                 // padding: EdgeInsets.only(
                   // left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: TextField(
                      controller: email,
                   //   keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                         border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                        labelText: "Email ou Celular",
                        hintText: 'Entre com email ou celular'),
                    ),
                  ),
                    Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                 // padding: EdgeInsets.only(
                   // left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: TextField(
                      controller: password,
                      obscureText: true,
                      decoration: InputDecoration(
                         border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                        labelText: "Senha",
                        hintText: 'Entre com a senha'),
                    ),
                  ),
                  
               
               // const SizedBox(
                //      height: 40,
                  //  ),
               /*     Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.black12, borderRadius: BorderRadius.circular(20)
                      ),
                      
                      child: FlatButton(
                        onPressed: (){
                         Navigator.pop(context);
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.black87, fontSize: 25),
                      ),
                      ), 
                    
                    ), */
                  //  const SizedBox(
                     // height: 130,
                  //  ),

            ],
          ),
          ),
       /*     Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets. fromLTRB(16.0, 0.0, 16.0, 4.0),
                child: ElevatedButton(
                  child: Text(widgetText),
                  onPressed: () {
                     // insertCadastro();
                  },
                   ),
                ),
            ),    */

          SizedBox(height: 10.0),
         RaisedButton(
           child: Text('Adicionar User'),
           color: Colors.green,
         /*  onPressed: (){
             AuthService().addUser(nomefantasia, cpnj, datenasc, email, password ).then((val){
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
           }, */
         ),
        ],
      ),
    );
  }


 /* insertCadastro() async {
    final user = User(
      id: M.ObjectId(),
     nome: nomeController.text,
      cnpjoucpf: int.parse(cnpjcpfController.text),
      nascimento: int.parse(datanascimentoController.text),
      emailoucelular: emailController.text,
      senha: senhaController.text,
    );
    await MongoDatabase.insert(user);
    Navigator.pop(context);
  } */

}
