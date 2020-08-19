import 'package:flutter/material.dart';
import '../../models/match_score_model.dart';
import '../match/keeper_match_page.dart';
import '../match/kicker_match_page.dart';

class GoalResultPage extends StatefulWidget {
  final MatchScoreModel matchScoreModel;
  final int position;

  const GoalResultPage(
      {Key key, @required this.matchScoreModel, @required this.position})
      : super(key: key);

  @override
  _GoalResultPageState createState() => _GoalResultPageState();
}

class _GoalResultPageState extends State<GoalResultPage> {
  @override
  void initState() {
    super.initState();
    delayToNavigate();
  }

  Future delayToNavigate() async {
    return await Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) {
          return widget.matchScoreModel.isKick
              ? KeeperMatchPage(
                  matchScoreModel: widget.matchScoreModel,
                )
              : KickerMatchPage(matchScoreModel: widget.matchScoreModel);
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.matchScoreModel.isKick) {
      widget.matchScoreModel.player1ScoreModel.goal();
    } else {
      widget.matchScoreModel.player2ScoreModel.goal();
    }
    return Scaffold(
      body: Text("Posição selecionada:${widget.position}"),
    );
  }
}
