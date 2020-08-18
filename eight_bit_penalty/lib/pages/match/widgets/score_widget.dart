import 'package:flutter/material.dart';
import 'player_1_score_widget.dart';
import 'player_2_score_widget.dart';

class ScoreWidget extends StatelessWidget {
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
              currentRound: 0,
            ),
            Player2ScoreWidget(
              currentRound: 3,
            ),
          ],
        ),
      ),
    );
  }
}
