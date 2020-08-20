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
    var image = widget.matchScoreModel.isKick
        ? Image.asset(
            "assets/images/ball.png",
            height: 30,
            width: 30,
          )
        : Image.asset(
            "assets/images/glove.png",
            height: 30,
            width: 30,
          );

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
                          position: widget.matchScoreModel.isKick ? 1 : 3,
                          image: image),
                      GoalPositionWidget(
                          matchScoreModel: widget.matchScoreModel,
                          position: widget.matchScoreModel.isKick ? 2 : 2,
                          image: image),
                      GoalPositionWidget(
                          matchScoreModel: widget.matchScoreModel,
                          position: widget.matchScoreModel.isKick ? 3 : 1,
                          image: image),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      GoalPositionWidget(
                          matchScoreModel: widget.matchScoreModel,
                          position: widget.matchScoreModel.isKick ? 4 : 6,
                          image: image),
                      GoalPositionWidget(
                          matchScoreModel: widget.matchScoreModel,
                          position: widget.matchScoreModel.isKick ? 5 : 5,
                          image: image),
                      GoalPositionWidget(
                          matchScoreModel: widget.matchScoreModel,
                          position: widget.matchScoreModel.isKick ? 6 : 4,
                          image: image),
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
