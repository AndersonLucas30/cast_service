// ignore_for_file: prefer_const_constructors, deprecated_member_use, sized_box_for_whitespace, use_key_in_widget_constructors, avoid_unnecessary_containers, avoid_print
import 'package:castservice/CHAT/models/screens/home_screens.dart';
import 'package:castservice/FEED/feed_screen.dart';
import 'package:castservice/PERFIL/Botoes.dart';
import 'package:castservice/PERFIL/Destaque.dart';
import 'package:castservice/PERFIL/Feed.dart';
import 'package:castservice/SEARCH/search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
    );
  }
}

class PerfilPessoal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
      children: [
         Column(
        children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                BoxShadow(color: Colors.black),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.
              spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                child: Text(
                  "Everton_Figueredo",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ),
                Row(
                  children: [
                    IconButton(icon: Icon(Icons.access_time),
                    onPressed: () {},
                    iconSize: 30,
                    ),
                    IconButton(
                      icon: Icon(Icons.dehaze),
                      onPressed: () {},
                      iconSize: 30,
                      ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text("12", 
                style: TextStyle(fontWeight: FontWeight.w900),
                ),
                Text(" Visitas ao perfil nos ultimos 7 dias")
              ],
            ),
          ),
          Divider(
            height: 1,
            thickness: 0.2,
            color: Colors.black,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2.3,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Row(
                   children: [
                     Container(
                      // color: Colors.red,
                       width: MediaQuery.of(context).size.width / 3,
                       height: MediaQuery.of(context).size.height / 5,
                      child: Stack(
                        children: [
                          Center(
                          child: CircleAvatar( 
                            radius: 50,
                            backgroundColor: 
                            Colors.black,
                          ),
                          ),
                          Center(
                            child: Padding
                            (padding: EdgeInsets.only(top: 75),
                            child: Container(
                             height: 30,
                             alignment: Alignment.bottomRight,
                             child: 
                            FloatingActionButton
                            (child: Icon(Icons.add,
                            ),

                            onPressed: () {},
                            )
                            )
                            ,
                            ),
                          )
                        ],
                      ),
                     ),
                    Container(
                      
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                            
                              Padding(padding: EdgeInsets.all(4),
                              child: Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text("44", 
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20
                                  ),),
                                  Text("Publicações",
                                  style: TextStyle(fontSize: 15),
                                  )
                                ],
                              ),

                              ),
                                Padding(padding: EdgeInsets.all(4),
                              child: Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text("612", 
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20
                                  ),),
                                  Text("Seguidores",
                                  style: TextStyle(fontSize: 15),
                                  )
                                ],
                              ),
                              ),
                              Padding(padding: EdgeInsets.all(4),
                              child: Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text("282", 
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20
                                  ),),
                                  Text("Seguindo",
                                  style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                              ),
                            ],
                          ),
                       Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 8),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3 - 16,
                      height: 25,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey
                        ),
                      ),
                      child: RaisedButton(onPressed: (){},
                      color: Colors.white,
                      child: Text("Promover", style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 8),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3 - 16,
                      height: 25,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey
                        ),
                      ),
                      child: RaisedButton(onPressed: (){},
                      color: Colors.white,
                      child: Text("Editar perfil", style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ),
                    ),
                  ],
                ),
                        ],
                      ),
                    ),

                   ],
                 ),
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(padding: EdgeInsets.only(left: 15), child: Text("Everton Figueiredo", style: TextStyle(fontWeight: FontWeight.w900,
                    fontSize: 15 ),),
                    ),
                    Padding(padding: EdgeInsets.only(left: 15), child: Text("Programador", style: TextStyle(fontSize: 15 ),),
                    ),
                    Padding(padding: EdgeInsets.only(left: 15), child: Text("Ficamos por aqui hoje....", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15 ),
                    ),
                    ),
                  ],
                ),
                Container(
                  height: 120,
                  child: Destaque(),
                ),
             ],
            ),
          ),
          Divider(
            height: 1,
            thickness: 0.2,
            color: Colors.black,
          ),
          Botoes(),
          Feed(),
        ],
      ),
      ],
      ),
        bottomNavigationBar: ClipRRect(

      /* borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ), */

        child: BottomNavigationBar(
          onTap: (value) => PerfilPessoal(),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
            icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                
                child: FlatButton(
                  
                  onPressed: ()
                   {
                    Navigator.push(context, MaterialPageRoute(builder: (_) =>  FeedScreen()));
                    
                 

                  },
                  child: Icon(
                    Icons.dashboard,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              
              title: Text(''),
            ),
              BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                
                child: FlatButton(
              
               
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) =>  Search()));
                  },
                  child: Icon(
                    Icons.search,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Color(0xFF23B66F),
                  onPressed: () => print('Upload photo'),
                  child: Icon(
                    Icons.add,
                    size: 35.0,
                    color: Colors.white,
                  ),
                ),
              ),
              
              title: Text(''),
            ),
           BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                
                child: FlatButton(
              
               
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) =>  HomeScreen()));
                  },
                  child: Icon(
                    Icons.chat,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              
              title: Text(''),
            ),
            
                BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                
                child: FlatButton(
              
               
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) =>  PerfilPessoal()));
                  },
                  child: Icon(
                    Icons.person_outline,
                    size: 32.0,
                    color: Colors.black,
                  ),
                ),
              ),
              
              title: Text(''),
            ),
          ],
        ),
      ),
    );
  }
}