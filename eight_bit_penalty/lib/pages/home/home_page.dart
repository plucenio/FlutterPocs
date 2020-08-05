import 'package:eight_bit_penalty/pages/match/finding_match_page.dart';
import 'package:eight_bit_penalty/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';

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
