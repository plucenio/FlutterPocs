import 'package:eight_bit_penalty/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';

class KeeperMatchPage extends StatefulWidget {
  KeeperMatchPage({Key key}) : super(key: key);

  @override
  _KeeperMatchPageState createState() => _KeeperMatchPageState();
}

class _KeeperMatchPageState extends State<KeeperMatchPage> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Text('Keeper'),
    );
  }
}
