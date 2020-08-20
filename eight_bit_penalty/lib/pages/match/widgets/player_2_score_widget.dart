import 'dart:math';
import 'package:flutter/material.dart';
import '../../../models/player_score_model.dart';

class Player2ScoreWidget extends StatefulWidget {
  final PlayerScoreModel playerScoreModel;

  const Player2ScoreWidget({Key key, @required this.playerScoreModel})
      : super(key: key);

  @override
  _Player2ScoreWidgetState createState() => _Player2ScoreWidgetState();
}

class _Player2ScoreWidgetState extends State<Player2ScoreWidget> {
  @override
  void initState() {
    super.initState();
  }

  Widget getColorBall({bool goal}) {
    var _screenHeight = MediaQuery.of(context).size.height;
    var _screenWidth = MediaQuery.of(context).size.width;
    var _ballSize = max(_screenHeight, _screenWidth) * 0.02;

    return Image.asset(
      'assets/images/ball.png',
      color: goal == null ? Colors.grey : goal ? Colors.blue : Colors.red,
      height: _ballSize,
      width: _ballSize,
    );
  }

  List<Widget> getKicks() {
    List<Widget> scoreBallList = <Widget>[];
    var remainingKicks = 5 -
        (widget.playerScoreModel.kicks.isNotEmpty
            ? widget.playerScoreModel.kicks.length
            : 0);
    if (widget.playerScoreModel.kicks.isNotEmpty) {
      for (var index = 0;
          index < widget.playerScoreModel.kicks.length;
          index++) {
        scoreBallList
            .add(getColorBall(goal: widget.playerScoreModel.kicks[index]));
        scoreBallList.add(
          SizedBox(
            width: 10,
          ),
        );
      }
      if (widget.playerScoreModel.kicks.length >= 5) {
        scoreBallList.add(getColorBall());
      }
    }
    for (var index = 0; index < remainingKicks; index++) {
      scoreBallList.add(getColorBall());
      scoreBallList.add(
        SizedBox(
          width: 10,
        ),
      );
    }
    return scoreBallList;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: getKicks(),
      ),
    );
  }
}
