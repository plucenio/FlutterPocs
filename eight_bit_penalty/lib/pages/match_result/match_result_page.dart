import 'package:flutter/material.dart';
import '../../models/match_score_model.dart';
import '../home/home_page.dart';
import '../match/widgets/score_widget.dart';

class MatchResultPage extends StatefulWidget {
  final Widget kickResult;
  final MatchScoreModel matchScoreModel;

  MatchResultPage(
      {Key key, @required this.kickResult, @required this.matchScoreModel})
      : super(key: key);

  @override
  _MatchResultPageState createState() => _MatchResultPageState();
}

class _MatchResultPageState extends State<MatchResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ScoreWidget(
              matchScoreModel: widget.matchScoreModel,
            ),
            widget.kickResult,
            Text("Partida finalizada!"),
            RaisedButton(
              child: Text('Voltar para o inicio'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
