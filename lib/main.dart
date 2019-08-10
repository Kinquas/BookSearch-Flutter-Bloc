import 'package:flutter/material.dart';
import 'package:appteste/home/home_page.dart';

void main() {
  runApp(MinhaApp());
}

class MinhaApp extends StatelessWidget {
  @override 
  Widget build(BuildContext ){
    return MaterialApp(
      title: "AppTeste",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}