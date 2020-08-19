import 'dart:math';
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

  Widget getImage({bool goal}) {
    var _screenHeight = MediaQuery.of(context).size.height;
    var _screenWidth = MediaQuery.of(context).size.width;
    var _ballSize = max(_screenHeight, _screenWidth) * 0.4;

    return Image.asset(
      "assets/images/${goal ? "goal" : "keeper"}.png",
      height: _ballSize,
      width: _ballSize,
    );
  }

  @override
  Widget build(BuildContext context) {
    var opponentOption = Random().nextInt(7) + 1;
    var goal = (widget.position != opponentOption);
    if (widget.matchScoreModel.isKick) {
      goal
          ? widget.matchScoreModel.player1ScoreModel.goal()
          : widget.matchScoreModel.player1ScoreModel.fail();
    } else {
      goal
          ? widget.matchScoreModel.player2ScoreModel.goal()
          : widget.matchScoreModel.player2ScoreModel.fail();
    }
    return Scaffold(
      body: Column(
        children: [
          Text("""
Posição selecionada:${widget.position} Posição do oponente: $opponentOption"""),
          getImage(goal: goal)
        ],
      ),
    );
  }
}
