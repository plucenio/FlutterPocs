import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class GoalPositionWidget extends StatelessWidget {
  final int position;
  final Function action;

  const GoalPositionWidget(
      {Key key, @required this.position, @required this.action})
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
            onPressed: action.call,
          ),
          decoration: BoxDecoration(border: Border.all(width: 1)),
        ),
      ),
    );
  }
}
