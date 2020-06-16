import 'package:flutter/material.dart';
import 'package:olx_clone/home_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF692CD5)
      ),
      home: HomeWidget(),
    );
  }
}