// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Destaque extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container( child: Padding(padding: EdgeInsets.only(top: 15, left: 15),
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Column(children: [
            CircleAvatar(
              radius: 35,
            backgroundColor: Colors.black,
            child: 
            CircleAvatar(radius: 34,
            backgroundColor: Colors.white,
            child: Icon(Icons.add, size: 35,
            color: Colors.black,
            ),
            ),
            ),
            Padding(padding: const EdgeInsets.only(top: 8.0),
            child: Container( 
              width: 60,
              child: Flexible(    
              child: Center(
                child: Text("Novo",
                 overflow: TextOverflow.
                ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
       ),
            ),
            ),
            ),
          ],
          ),
        ),

         Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Column(children: [
            CircleAvatar(
              radius: 35,
            backgroundColor: Colors.black,
            child: 
            CircleAvatar(radius: 34,
            backgroundColor: Colors.white,
            
            ),
            ),
            Padding(padding: const EdgeInsets.only(top: 8.0),
            child: Container( 
              width: 60,
              child: Flexible(    
              child: Center(
                child: Text("Primeiro",
                 overflow: TextOverflow.
                ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
       ),
            ),
            ),
            ),
          ],
          ),
        ),
        
      ],
    ),
    ),);
  }
}