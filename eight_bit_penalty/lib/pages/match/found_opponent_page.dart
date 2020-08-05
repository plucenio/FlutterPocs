import 'package:flutter/material.dart';

import '../../widgets/my_scaffold.dart';
import 'keeper_match_page.dart';
import 'kicker_match_page.dart';

class FoundOpponentPage extends StatefulWidget {
  FoundOpponentPage({Key key}) : super(key: key);

  @override
  _FoundOpponentPageState createState() => _FoundOpponentPageState();
}

class _FoundOpponentPageState extends State<FoundOpponentPage> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Oponente encontrado'),
            RaisedButton(
              child: Text('Kicker'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => KickerMatchPage(),
                    ));
              },
            ),
            RaisedButton(
              child: Text('Keeper'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => KeeperMatchPage(),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
