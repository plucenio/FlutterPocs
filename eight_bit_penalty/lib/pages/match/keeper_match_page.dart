import 'package:flutter/material.dart';
import '../../models/match_score_model.dart';
import '../../widgets/my_scaffold.dart';
import 'widgets/goal_widget.dart';
import 'widgets/score_widget.dart';

class KeeperMatchPage extends StatefulWidget {
  final MatchScoreModel matchScoreModel;

  KeeperMatchPage({
    Key key,
    @required this.matchScoreModel,
  }) : super(key: key) {
    matchScoreModel.isKick = false;
  }

  @override
  _KeeperMatchPageState createState() => _KeeperMatchPageState();
}

class _KeeperMatchPageState extends State<KeeperMatchPage> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: AppBar(
        title: Text('Keeper View'),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(child: Text('Campo')),
                  // Goleira
                  GoalWidget(
                    matchScoreModel: widget.matchScoreModel,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
