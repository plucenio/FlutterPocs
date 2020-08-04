import 'package:eight_bit_penalty/found_opponent.dart';
import 'package:eight_bit_penalty/widgets/my_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FindingMatch extends StatefulWidget {
  @override
  _FindingMatchState createState() => _FindingMatchState();
}

class _FindingMatchState extends State<FindingMatch> {
  @override
  void initState() {
    super.initState();
    delayToNavigate();
  }

  Future delayToNavigate() async {
    return await Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          CupertinoPageRoute(
            builder: (context) => FoundOpponent(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Text('Searching an opponent'),
    );
  }
}
