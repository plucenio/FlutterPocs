import 'package:flutter/material.dart';
import 'package:poc_consumo_api_json/pages/ranking_page.dart';
import 'package:poc_consumo_api_json/utils/constants.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(child: Column()),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    child: Row(
                      children: [
                        Icon(Icons.local_hospital),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Ranking de Hospitais'),
                      ],
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, '/hospitalRanking'
                          // MaterialPageRoute(
                          //   builder: (context) =>
                          //       RankingPage(title: hospital_ranking),
                          //   settings: RouteSettings(name: "/hospitalRanking"),
                          // ),
                          );
                    },
                  ),
                  RaisedButton(
                    child: Row(
                      children: [
                        Icon(Icons.local_hospital),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Ranking de Usuários'),
                      ],
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, '/userRanking'
                          // MaterialPageRoute(
                          //   builder: (context) =>
                          //       RankingPage(title: user_ranking),
                          //   settings: RouteSettings(name: "/userRanking"),
                          // ),
                          );
                    },
                  ),
                ],
              ),
            ),
            Expanded(child: Column()),
          ],
        ),
      ),
    );
  }
}
