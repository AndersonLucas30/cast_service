// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'FEED/feed_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    home: LoginDemo(),
     
    );
  }
}



// ignore: use_key_in_widget_constructors
class LoginDemo extends StatefulWidget {
@override
_LoginDemoState createState() => _LoginDemoState();

}


class _LoginDemoState extends State<LoginDemo> {
 

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: HexColor('#F2DD68'),
    
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                // ignore: sized_box_for_whitespace
                child: Container( 
                  width: 200,
                  height: 150,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),
              child: Image.asset('img/flutter-logo.png')*/
                ),
              ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Entre com Email'
                  ),
                ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Senha",
                        hintText: 'Entre com senha'),
                    ),
                  ),
                  // ignore: deprecated_member_use
                  FlatButton(
                    onPressed:(){

                    } ,
                    child: Text(
                      'esqueci a senha',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    ),
                    Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.black12, borderRadius: BorderRadius.circular(20)
                      ),
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        onPressed: (){
                         Navigator.push(
                      context, MaterialPageRoute(builder: (_) => FeedScreen()));
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.black87, fontSize: 25),
                      ),
                      ),
                    ),
                    const SizedBox(
                      height: 130,
                    ),
                    const Text('criar conta')
          ],
        ),
      ),
    );
  }
}


