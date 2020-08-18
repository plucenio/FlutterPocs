import 'dart:math';
import 'package:flutter/material.dart';

class Player1ScoreWidget extends StatefulWidget {
  final int currentRound;

  const Player1ScoreWidget({Key key, @required this.currentRound})
      : super(key: key);

  @override
  _Player1ScoreWidgetState createState() => _Player1ScoreWidgetState();
}

class _Player1ScoreWidgetState extends State<Player1ScoreWidget> {
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
      // child: ListView.builder(itemBuilder: scoreBallList,)
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/ball.png',
            color: Colors.grey,
            height: _ballSize,
            width: _ballSize,
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/images/ball.png',
            color: Colors.grey,
            height: _ballSize,
            width: _ballSize,
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/images/ball.png',
            color: Colors.grey,
            height: _ballSize,
            width: _ballSize,
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/images/ball.png',
            color: Colors.grey,
            height: _ballSize,
            width: _ballSize,
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/images/ball.png',
            color: Colors.grey,
            height: _ballSize,
            width: _ballSize,
          ),
        ],
      ),
    );
  }
}
