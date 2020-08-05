import 'package:eight_bit_penalty/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';

class KickerMatchPage extends StatefulWidget {
  KickerMatchPage({Key key}) : super(key: key);

  @override
  _KickerMatchPageState createState() => _KickerMatchPageState();
}

class _KickerMatchPageState extends State<KickerMatchPage> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Text('Kicker'),
    );
  }
}
