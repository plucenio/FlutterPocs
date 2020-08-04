import 'package:eight_bit_penalty/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';

class Keeper extends StatefulWidget {
  Keeper({Key key}) : super(key: key);

  @override
  _KeeperState createState() => _KeeperState();
}

class _KeeperState extends State<Keeper> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Text('Keeper'),
    );
  }
}
