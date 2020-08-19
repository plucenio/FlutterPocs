import 'package:flutter/material.dart';
import '../../../models/match_score_model.dart';
import 'player_1_score_widget.dart';
import 'player_2_score_widget.dart';

class ScoreWidget extends StatefulWidget {
  final MatchScoreModel matchScoreModel;

  const ScoreWidget({Key key, @required this.matchScoreModel})
      : super(key: key);

  @override
  _ScoreWidgetState createState() => _ScoreWidgetState();
}

class _ScoreWidgetState extends State<ScoreWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Player1ScoreWidget(
              playerScoreModel: widget.matchScoreModel.player1ScoreModel,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("x"),
            ),
            Player2ScoreWidget(
              playerScoreModel: widget.matchScoreModel.player2ScoreModel,
            ),
          ],
        ),
      ),
    );
  }
}
