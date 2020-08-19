class PlayerScoreModel {
  List<bool> kicks;

  PlayerScoreModel() {
    kicks = [];
  }

  void goal() {
    kicks.add(true);
  }

  void fail() {
    kicks.add(false);
  }
}
