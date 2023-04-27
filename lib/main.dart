

import 'package:flutter/material.dart';
import 'package:registro_jornada/Login.dart';
import 'package:registro_jornada/Principal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Login(),
    );
  }
}