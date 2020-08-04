import 'package:eight_bit_penalty/finding_match.dart';
import 'package:eight_bit_penalty/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void onPressedMethod() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FindingMatch(),
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
