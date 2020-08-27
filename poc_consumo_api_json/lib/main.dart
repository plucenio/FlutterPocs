import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive/hive.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:poc_consumo_api_json/cubit/ranking_cubit.dart';
import 'package:poc_consumo_api_json/models/health_insurance_model.dart';
import 'package:poc_consumo_api_json/pages/caroussel_page.dart';
import 'package:poc_consumo_api_json/pages/health_insurance_page.dart';
import 'package:poc_consumo_api_json/pages/home_page.dart';
import 'package:poc_consumo_api_json/pages/ranking_page.dart';
import 'package:poc_consumo_api_json/pages/splash_page.dart';
import 'package:poc_consumo_api_json/repositories/api_repository.dart';
import 'package:poc_consumo_api_json/utils/constants.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    Directory directory = await pathProvider.getApplicationDocumentsDirectory();
    Hive.init(directory.path);
  }
  Hive.registerAdapter(HealthInsuranceAdapter());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      //providers: providers,
      providers: [
        BlocProvider(
          create: (context) => RankingCubit(apiRepository: ApiRepository()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: pacificBlueColor,
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
          '/health_insurances': (context) => HealthInsurancePage(),
        },
        home: I18n(
          child: SplashPage(),
        ),
      ),
    );
  }
}
