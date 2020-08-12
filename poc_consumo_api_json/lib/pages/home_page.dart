import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:poc_consumo_api_json/utils/constants.dart';

import 'widgets/default_scaffold.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      titleWidget: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.home),
          SizedBox(
            width: 5,
          ),
          Text('Home Page'),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              backgroundSource,
            ),
          ),
        ),
        child: Center(
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
                      color: pacificBlueColor,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, '/hospitalRanking');
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
                      color: pacificBlueColor,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, '/userRanking');
                      },
                    ),
                  ],
                ),
              ),
              Expanded(child: Column()),
            ],
          ),
        ),
      ),
    );
  }
}
