import 'package:flutter/material.dart';

import 'goal_position_widget.dart';

class GoalWidget extends StatelessWidget {
  final bool isKick;
  final Function action;

  const GoalWidget({Key key, @required this.isKick, @required this.action})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      GoalPositionWidget(
                          position: isKick ? 1 : 4, action: action),
                      GoalPositionWidget(
                          position: isKick ? 2 : 3, action: action),
                      GoalPositionWidget(
                          position: isKick ? 3 : 2, action: action),
                      GoalPositionWidget(
                          position: isKick ? 4 : 1, action: action),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      GoalPositionWidget(
                          position: isKick ? 5 : 8, action: action),
                      GoalPositionWidget(
                          position: isKick ? 6 : 7, action: action),
                      GoalPositionWidget(
                          position: isKick ? 7 : 6, action: action),
                      GoalPositionWidget(
                          position: isKick ? 8 : 5, action: action),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
