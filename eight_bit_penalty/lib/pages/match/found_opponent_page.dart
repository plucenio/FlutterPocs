import 'package:flutter/material.dart';

import '../../widgets/my_scaffold.dart';

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
