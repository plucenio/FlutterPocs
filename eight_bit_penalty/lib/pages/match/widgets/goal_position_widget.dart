import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../goal_result_page.dart';

class GoalPositionWidget extends StatelessWidget {
  final int position;
  final bool isKick;

  const GoalPositionWidget(
      {Key key, @required this.isKick, @required this.position})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 4, left: 4, right: 4),
        child: Container(
          height: double.infinity,
          child: RaisedButton(
              color: Colors.white,
              child: Text('$position'),
              elevation: 0,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GoalResultPage(
                      isKick: isKick,
                      position: position,
                    ),
                  ),
                );
              }),
          decoration: BoxDecoration(border: Border.all(width: 1)),
        ),
      ),
    );
  }
}
