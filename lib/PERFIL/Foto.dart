// ignore_for_file: file_names, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:castservice/PERFIL/fot.dart';
import 'package:flutter/material.dart';

class Foto extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Container(
        height: MediaQuery.of(context).size.width / 3 - 3,
        width: MediaQuery.of(context).size.width / 3 - 3,
        child: Fot(),
      ),
    );
  }
}