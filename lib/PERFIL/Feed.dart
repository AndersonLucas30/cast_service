// ignore_for_file: file_names, use_key_in_widget_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:castservice/PERFIL/Foto.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 3,
              child: RaisedButton(onPressed: (){},
               color: Colors.white ,
               elevation: 0,
               child: Icon(Icons.grid_on,
               size: 30,
               color: Colors.blueAccent,
               ),
               ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 3,
              child: RaisedButton(onPressed: (){},
               color: Colors.white ,
               elevation: 0,
               child: Icon(Icons.contacts,
               size: 30,
               color: Colors.grey,
               ),
               )
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 3,
              child: RaisedButton(onPressed: (){},
               color: Colors.white ,
               elevation: 0,
               child: Icon(Icons.group_add,
               size: 30,
               color: Colors.grey,
               ),
               )
              ),
            ],
          ),
            Container(
              alignment: Alignment.topLeft,
              child: Wrap(
                children: [
                  Foto(),
                  Foto(),
                  Foto(),
                  Foto(),
                  Foto(),
                  Foto(),
                  Foto(),
                  Foto(),
                  Foto(),
                ],
              ),
            ),
          
        ],
      ),
    );
  }
}