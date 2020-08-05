import 'package:eight_bit_penalty/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';

class FoundOpponentPage extends StatefulWidget {
  FoundOpponentPage({Key key}) : super(key: key);

  @override
  _FoundOpponentPageState createState() => _FoundOpponentPageState();
}

class _FoundOpponentPageState extends State<FoundOpponentPage> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Text('Oponente encontrado'),
    );
  }
}
