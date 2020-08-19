import 'package:flutter/material.dart';
import '../../../models/match_score_model.dart';
import 'goal_position_widget.dart';

class GoalWidget extends StatefulWidget {
  final MatchScoreModel matchScoreModel;

  const GoalWidget({
    Key key,
    @required this.matchScoreModel,
  }) : super(key: key);

  @override
  _GoalWidgetState createState() => _GoalWidgetState();
}

class _GoalWidgetState extends State<GoalWidget> {
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
                          matchScoreModel: widget.matchScoreModel,
                          position: widget.matchScoreModel.isKick ? 1 : 4),
                      GoalPositionWidget(
                          matchScoreModel: widget.matchScoreModel,
                          position: widget.matchScoreModel.isKick ? 2 : 3),
                      GoalPositionWidget(
                          matchScoreModel: widget.matchScoreModel,
                          position: widget.matchScoreModel.isKick ? 3 : 2),
                      GoalPositionWidget(
                          matchScoreModel: widget.matchScoreModel,
                          position: widget.matchScoreModel.isKick ? 4 : 1),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      GoalPositionWidget(
                          matchScoreModel: widget.matchScoreModel,
                          position: widget.matchScoreModel.isKick ? 5 : 8),
                      GoalPositionWidget(
                          matchScoreModel: widget.matchScoreModel,
                          position: widget.matchScoreModel.isKick ? 6 : 7),
                      GoalPositionWidget(
                          matchScoreModel: widget.matchScoreModel,
                          position: widget.matchScoreModel.isKick ? 7 : 6),
                      GoalPositionWidget(
                          matchScoreModel: widget.matchScoreModel,
                          position: widget.matchScoreModel.isKick ? 8 : 5),
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
