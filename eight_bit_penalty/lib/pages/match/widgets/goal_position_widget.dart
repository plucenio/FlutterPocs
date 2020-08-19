import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import '../../../models/match_score_model.dart';
import '../../goal_result/goal_result_page.dart';

class GoalPositionWidget extends StatefulWidget {
  final MatchScoreModel matchScoreModel;
  final int position;

  GoalPositionWidget(
      {Key key, @required this.matchScoreModel, @required this.position})
      : super(key: key);

  @override
  _GoalPositionWidgetState createState() => _GoalPositionWidgetState();
}

class _GoalPositionWidgetState extends State<GoalPositionWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 4, left: 4, right: 4),
        child: Container(
          height: double.infinity,
          child: RaisedButton(
              color: Colors.white,
              child: Text('${widget.position}'),
              elevation: 0,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GoalResultPage(
                      matchScoreModel: widget.matchScoreModel,
                      position: widget.position,
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
