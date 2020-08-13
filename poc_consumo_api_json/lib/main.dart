import 'package:flutter/material.dart';
import 'package:poc_consumo_api_json/pages/caroussel_page.dart';
import 'package:poc_consumo_api_json/pages/home_page.dart';
import 'package:poc_consumo_api_json/pages/ranking_page.dart';
import 'package:poc_consumo_api_json/pages/splash_page.dart';
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
        fontFamily: 'Roboto',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => SplashPage(),
        '/home': (context) => HomePage(),
        '/userRanking': (context) => RankingPage(
              title: user_ranking,
            ),
        '/hospitalRanking': (context) => RankingPage(
              title: hospital_ranking,
            ),
        '/carrossel': (context) => CarousselPage(),
      },
    );
  }
}
