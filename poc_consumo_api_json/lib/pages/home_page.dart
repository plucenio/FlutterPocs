import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:poc_consumo_api_json/i18n/i18n_keys.dart';
import 'package:poc_consumo_api_json/pages/health_insurance_page.dart';
import 'package:poc_consumo_api_json/utils/constants.dart';
import 'widgets/default_scaffold.dart';
import 'package:poc_consumo_api_json/i18n/home_page.i18n.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      titleWidget: Image.asset(
        logoSafety4MeWhitePacificBlue,
        filterQuality: FilterQuality.high,
        height: MediaQuery.of(context).size.height * 0.05,
        fit: BoxFit.fitHeight,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  RaisedButton(
                    child: Row(
                      children: [
                        Icon(Icons.local_hospital),
                        SizedBox(
                          width: 5,
                        ),
                        Text(homePageHospitalRanking.i18n),
                      ],
                    ),
                    color: pacificBlueColor,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, '/hospitalRanking');
                    },
                  ),
                  RaisedButton(
                    child: Row(
                      children: [
                        Icon(Icons.person),
                        SizedBox(
                          width: 5,
                        ),
                        Text(homePageUserRankingText.i18n),
                      ],
                    ),
                    color: pacificBlueColor,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, '/userRanking');
                    },
                  ),
                  RaisedButton(
                    child: Row(
                      children: [
                        Icon(Icons.swap_horiz),
                        SizedBox(
                          width: 5,
                        ),
                        Text(homePageCarousel.i18n),
                      ],
                    ),
                    color: pacificBlueColor,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, '/carrossel');
                    },
                  ),
                  RaisedButton(
                    child: Row(
                      children: [
                        Icon(Icons.healing),
                        SizedBox(
                          width: 5,
                        ),
                        Text(homePageHealthInsurance.i18n),
                      ],
                    ),
                    color: pacificBlueColor,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HealthInsurancePage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
