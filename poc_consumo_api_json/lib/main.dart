import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:i18n_extension/i18n_widget.dart';
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
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', "US"),
        const Locale('pt', "BR"),
      ],
      routes: {
        '/home': (context) => HomePage(),
        '/userRanking': (context) => RankingPage(
              title: user_ranking,
            ),
        '/hospitalRanking': (context) => RankingPage(
              title: hospital_ranking,
            ),
        '/carrossel': (context) => CarousselPage(),
      },
      home: I18n(
        child: SplashPage(),
      ),
    );
  }
}
