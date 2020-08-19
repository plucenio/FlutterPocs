import 'package:eight_bit_penalty/models/match_score_model.dart';
import 'package:flutter/material.dart';
import '../../widgets/my_scaffold.dart';
import '../match/keeper_match_page.dart';
import '../match/kicker_match_page.dart';

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
                        builder: (context) => KickerMatchPage(
                              matchScoreModel: MatchScoreModel(),
                            )));
              },
            ),
            RaisedButton(
              child: Text('Keeper'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => KeeperMatchPage(
                        matchScoreModel: MatchScoreModel(),
                      ),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
