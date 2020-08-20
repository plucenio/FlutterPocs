import 'package:eight_bit_penalty/widgets/my_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/my_scaffold.dart';
import 'found_opponent_page.dart';

class FindingMatchPage extends StatefulWidget {
  @override
  _FindingMatchPageState createState() => _FindingMatchPageState();
}

class _FindingMatchPageState extends State<FindingMatchPage> {
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
            builder: (context) => FoundOpponentPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: MyContainer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              Text('Searching an opponent'),
            ],
          ),
        ),
      ),
    );
  }
}
