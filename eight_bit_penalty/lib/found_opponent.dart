import 'package:eight_bit_penalty/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';

class FoundOpponent extends StatefulWidget {
  FoundOpponent({Key key}) : super(key: key);

  @override
  _FoundOpponentState createState() => _FoundOpponentState();
}

class _FoundOpponentState extends State<FoundOpponent> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Text('Oponente encontrado'),
    );
  }
}
