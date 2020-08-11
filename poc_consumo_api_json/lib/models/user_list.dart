import 'user.dart';

class UserList {
  List<User> users;

  UserList({this.users});

  factory UserList.fromJson(List<dynamic> json) {
    return UserList(
        users:
            json.map((e) => User.fromJson(e as Map<String, dynamic>)).toList());
  }
}
