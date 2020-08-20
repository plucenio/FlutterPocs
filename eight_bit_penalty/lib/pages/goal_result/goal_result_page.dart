import 'dart:math';
import 'package:eight_bit_penalty/pages/match_result/match_result_page.dart';
import 'package:eight_bit_penalty/widgets/my_container.dart';
import 'package:eight_bit_penalty/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';
import '../../models/match_score_model.dart';
import '../home/home_page.dart';
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

  Future navigateToMatchResult(Widget kickResult) async {
    return await Future.delayed(Duration(seconds: 3), () {
      return MatchResultPage(
        matchScoreModel: widget.matchScoreModel,
        kickResult: kickResult,
      );
    });
  }

  bool checkMatchFinished() {
    var goalsPlayer1 = widget.matchScoreModel.player1ScoreModel.kicks
        .where((element) => element == true)
        .length;
    var goalsPlayer2 = widget.matchScoreModel.player2ScoreModel.kicks
        .where((element) => element == true)
        .length;

    var player1RemainingKicks =
        5 - widget.matchScoreModel.player1ScoreModel.kicks.length;
    var player2RemainingKicks =
        5 - widget.matchScoreModel.player2ScoreModel.kicks.length;

    if (player1RemainingKicks + player2RemainingKicks > 0) {
      if (goalsPlayer1 + player1RemainingKicks < goalsPlayer2) {
        return true;
      }
      if (goalsPlayer2 + player2RemainingKicks < goalsPlayer1) {
        return true;
      }
    } else {
      if (widget.matchScoreModel.player1ScoreModel.kicks.length ==
              widget.matchScoreModel.player2ScoreModel.kicks.length &&
          goalsPlayer1 != goalsPlayer2) {
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    var opponentOption = Random().nextInt(5) + 1;
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
    if (checkMatchFinished()) {
      return FutureBuilder(
          future: navigateToMatchResult(getImage(goal: goal)),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return snapshot.data;
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          });
    } else {
      delayToNavigate();
      return MyScaffold(
        body: MyContainer(
          child: Center(
            child: Column(
              children: [
                Text("""
Posição selecionada: ${widget.position}
Posição do oponente: $opponentOption"""),
                getImage(goal: goal)
              ],
            ),
          ),
        ),
      );
    }
  }
}
