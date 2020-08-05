import 'package:flutter/material.dart';

import '../../widgets/my_scaffold.dart';

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
