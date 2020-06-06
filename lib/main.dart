import 'package:flutter/material.dart';
import 'package:flowerslist/home.dart';
import 'package:flutter/services.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,]);
    return MaterialApp(
      home: Home(),
    );
  }
}



