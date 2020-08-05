import 'package:flutter/material.dart';

import 'keeper_match_page.dart';
import 'kicker_match_page.dart';

class GoalResultPage extends StatefulWidget {
  final bool isKick;
  final int position;

  const GoalResultPage(
      {Key key, @required this.isKick, @required this.position})
      : super(key: key);

  @override
  _GoalResultPageState createState() => _GoalResultPageState();
}

class _GoalResultPageState extends State<GoalResultPage> {
  @override
  void initState() {
    super.initState();
    delayToNavigate();
  }

  Future delayToNavigate() async {
    return await Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) {
          return widget.isKick ? KeeperMatchPage() : KickerMatchPage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(''),
    );
  }
}
