import 'package:eight_bit_penalty/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';

class Kicker extends StatefulWidget {
  Kicker({Key key}) : super(key: key);

  @override
  _KickerState createState() => _KickerState();
}

class _KickerState extends State<Kicker> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Text('Kicker'),
    );
  }
}
