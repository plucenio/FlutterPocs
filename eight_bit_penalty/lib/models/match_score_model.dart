import 'player_score_model.dart';

class MatchScoreModel {
  PlayerScoreModel player1ScoreModel;
  PlayerScoreModel player2ScoreModel;

  bool isKick;

  MatchScoreModel() {
    player1ScoreModel = PlayerScoreModel();
    player2ScoreModel = PlayerScoreModel();
  }
}
