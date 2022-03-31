// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:castservice/CHAT/models/screens/home_screens.dart';
import 'package:castservice/FEED/feed_screen.dart';
import 'package:castservice/PERFIL/perfil_pessoal.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  Widget _buildPost(int index) {
    return Padding(
      
      padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 5.0),
      child: Container(
        width: double.infinity,
        height: 560.0,
        decoration: BoxDecoration(
          color: Colors.white,
         // borderRadius: BorderRadius.circular(0.0),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: <Widget>[
                              
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      //backgroundColor: Color(0xFFEDF0F6),
      backgroundColor: Color(0xFFFFFFFF),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Padding(
                   padding: EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Colors.grey),
                ), 
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Colors.grey),
                ), 
                contentPadding: EdgeInsets.all(20.0),
                hintText: 'Pesquisar',
                prefixIcon: Container(
                  margin: EdgeInsets.all(4.0),
                  width: 48.0,
                  height: 48.0,    
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: Color(0xFF23B66F),
                    onPressed: () => print('Post comment'),
                    child: Icon(
                      Icons.search,
                      size: 25.0,
                      color: Colors.white,
                    ),
                  ),
                ),
             
              ),
            ),
              
            ),
          ),
      
          Divider(
            height: 1,
            thickness: 0.2,
            color: Colors.black,
          ),
          _buildPost(0),
          _buildPost(1),
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
              
               
                  onPressed: () {
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
              icon: Icon(
                Icons.search,
                size: 32.0,
                color: Colors.black,
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
                    size: 30.0,
                    color: Colors.grey,
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