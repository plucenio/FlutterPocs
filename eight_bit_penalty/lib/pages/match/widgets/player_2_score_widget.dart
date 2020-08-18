import 'dart:math';
import 'package:flutter/material.dart';

class Player2ScoreWidget extends StatefulWidget {
  final int currentRound;

  const Player2ScoreWidget({Key key, @required this.currentRound})
      : super(key: key);

  @override
  _Player2ScoreWidgetState createState() => _Player2ScoreWidgetState();
}

class _Player2ScoreWidgetState extends State<Player2ScoreWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _screenHeight = MediaQuery.of(context).size.height;
    var _screenWidth = MediaQuery.of(context).size.width;
    var _ballSize = max(_screenHeight, _screenWidth) * 0.02;

    var _defaultBall = Image.asset(
      'assets/images/ball.png',
      color: Colors.blue,
      height: _ballSize,
      width: _ballSize,
    );

    var scoreBallList = [];
    for (var index = 0; index < 5; index++) {
      scoreBallList.add(_defaultBall);
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/ball.png',
            height: _ballSize,
            width: _ballSize,
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/images/ball.png',
            height: _ballSize,
            width: _ballSize,
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/images/ball.png',
            height: _ballSize,
            width: _ballSize,
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/images/ball.png',
            height: _ballSize,
            width: _ballSize,
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/images/ball.png',
            height: _ballSize,
            width: _ballSize,
          ),
        ],
      ),
    );
  }
}
