import 'package:flutter/material.dart';
import 'goal_position_widget.dart';

class GoalWidget extends StatelessWidget {
  final bool isKick;

  const GoalWidget({Key key, @required this.isKick}) : super(key: key);
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
                          isKick: isKick, position: isKick ? 1 : 4),
                      GoalPositionWidget(
                          isKick: isKick, position: isKick ? 2 : 3),
                      GoalPositionWidget(
                          isKick: isKick, position: isKick ? 3 : 2),
                      GoalPositionWidget(
                          isKick: isKick, position: isKick ? 4 : 1),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      GoalPositionWidget(
                          isKick: isKick, position: isKick ? 5 : 8),
                      GoalPositionWidget(
                          isKick: isKick, position: isKick ? 6 : 7),
                      GoalPositionWidget(
                          isKick: isKick, position: isKick ? 7 : 6),
                      GoalPositionWidget(
                          isKick: isKick, position: isKick ? 8 : 5),
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
