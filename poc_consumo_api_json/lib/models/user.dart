class User {
  String name;
  String email;
  int score;

  User({this.name, this.email, this.score});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    score = json['score'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['score'] = this.score;
    return data;
  }
}
