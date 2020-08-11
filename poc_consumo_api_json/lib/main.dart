import 'package:flutter/material.dart';
import 'package:poc_consumo_api_json/pages/home_page.dart';
import 'package:poc_consumo_api_json/pages/ranking_page.dart';
import 'package:poc_consumo_api_json/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => HomePage(),
        '/userRanking': (context) => RankingPage(
              title: user_ranking,
            ),
        '/hospitalRanking': (context) => RankingPage(
              title: hospital_ranking,
            ),
      },
      // home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
