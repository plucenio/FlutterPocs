import 'dart:math';

import 'package:flutter/material.dart';

class Player2ScoreWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _screenHeight = MediaQuery.of(context).size.height;
    var _screenWidth = MediaQuery.of(context).size.width;
    var _ballSize = max(_screenHeight, _screenWidth) * 0.02;
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
