import 'package:flutter/material.dart';

class Kicker extends StatefulWidget {
  Kicker({Key key}) : super(key: key);

  @override
  _KickerState createState() => _KickerState();
}

class _KickerState extends State<Kicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Kicker'),
    );
  }
}
