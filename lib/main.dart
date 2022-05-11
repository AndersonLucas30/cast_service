// ignore_for_file: avoid_renaming_method_parameters, use_key_in_widget_constructors, unused_import, prefer_const_constructors

import 'package:castservice/Novo%20Login/boasvindas.dart';
import 'package:flutter/material.dart';



import 'BANCO DE DADOS/DB/mongodb.dart';

import 'home page/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BoasVindasPage() //LoginDemo(),
      // ),
    );
  }
}
