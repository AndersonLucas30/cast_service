// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FormCad extends StatefulWidget {
  const FormCad({ Key? key }) : super(key: key);

  @override
  _FormCadState createState() => _FormCadState();
}

class _FormCadState extends State<FormCad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#F2DD68'),
    
      body: SingleChildScrollView(
  
        child: Column(
          children: <Widget>[
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                    labelText: 'Nome Fantasia / Nome',
                    hintText: 'Nome Fantasia da Empresa ou Nome Pessoal'
                    
                  ),
                ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  //padding: EdgeInsets.only(
                    //left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                        labelText: "CNPJ ou CPF",
                        hintText: 'CNPJ da empresa ou CPF'),
                    ),
                  ),
                   const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  //padding: EdgeInsets.only(
                    //left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                         border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                        labelText: "Data de Nascimento",
                        hintText: 'Entre com a data de nascimento'),
                    ),
                  ),
                   const Padding(
                 padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                 // padding: EdgeInsets.only(
                   // left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                         border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                        labelText: "Email ou Celular",
                        hintText: 'Entre com email ou celular'),
                    ),
                  ),
                   const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                 // padding: EdgeInsets.only(
                   // left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                         border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
          
                        labelText: "Senha",
                        hintText: 'Entre com a senha'),
                    ),
                  ),
                  
               /*   FlatButton(
                    onPressed:(){

                    } ,
                    child: Text(
                      'esqueci a senha',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ), 
                    ), */
                const SizedBox(
                      height: 40,
                    ),
                    Container(
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
                    
                    ),
                  //  const SizedBox(
                     // height: 130,
                  //  ),
                  
          ],
        ),
      ),
    );
  }
}