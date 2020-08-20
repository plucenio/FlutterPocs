import 'package:flutter/material.dart';
import '../../models/match_score_model.dart';
import '../../widgets/my_scaffold.dart';
import 'widgets/goal_widget.dart';
import 'widgets/score_widget.dart';

class KickerMatchPage extends StatefulWidget {
  final MatchScoreModel matchScoreModel;
  KickerMatchPage({Key key, @required this.matchScoreModel}) : super(key: key) {
    matchScoreModel.isKick = true;
  }

  @override
  _KickerMatchPageState createState() => _KickerMatchPageState();
}

class _KickerMatchPageState extends State<KickerMatchPage> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: AppBar(
        title: Text('Kicker View'),
      ),
      body: Column(
        children: [
          ScoreWidget(
            matchScoreModel: widget.matchScoreModel,
          ),
          Expanded(
            flex: 9,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.asset("assets/images/grass.png").image,
                    fit: BoxFit.cover),
              ),
              width: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 150, right: 150, bottom: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GoalWidget(
                      matchScoreModel: widget.matchScoreModel,
                    ),
                    Expanded(child: Text('Campo')),
                    // Goleira
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
