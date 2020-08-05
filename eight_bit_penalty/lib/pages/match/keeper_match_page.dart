import 'package:flutter/material.dart';

import '../../widgets/my_scaffold.dart';
import 'kicker_match_page.dart';
import 'widgets/goal_widget.dart';
import 'widgets/score_widget.dart';

class KeeperMatchPage extends StatefulWidget {
  KeeperMatchPage({Key key}) : super(key: key);

  @override
  _KeeperMatchPageState createState() => _KeeperMatchPageState();
}

class _KeeperMatchPageState extends State<KeeperMatchPage> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: AppBar(
        title: Text('Keeper View'),
      ),
      body: Column(
        children: [
          ScoreWidget(),
          Expanded(
            flex: 9,
            child: Container(
              width: double.infinity,
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(child: Text('Campo')),
                  // Goleira
                  GoalWidget(
                    action: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => KickerMatchPage(),
                      ),
                    ),
                    isKick: false,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
