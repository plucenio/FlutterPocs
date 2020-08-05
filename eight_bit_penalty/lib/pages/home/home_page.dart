import 'package:flutter/material.dart';

import '../../widgets/my_scaffold.dart';
import '../match/finding_match_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void onPressedMethod() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FindingMatchPage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Search match'),
              onPressed: onPressedMethod,
            ),
          ],
        ),
      ),
    );
  }
}
