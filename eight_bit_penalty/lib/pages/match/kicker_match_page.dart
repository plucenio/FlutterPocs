import 'package:eight_bit_penalty/pages/match/goal_result_page.dart';
import 'package:flutter/material.dart';

import '../../widgets/my_scaffold.dart';
import 'keeper_match_page.dart';
import 'widgets/goal_widget.dart';
import 'widgets/score_widget.dart';

class KickerMatchPage extends StatefulWidget {
  KickerMatchPage({Key key}) : super(key: key);

  @override
  _KickerMatchPageState createState() => _KickerMatchPageState();
}

class _KickerMatchPageState extends State<KickerMatchPage> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: AppBar(
        title: Text('Kicker View'),
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
                  GoalWidget(
                    action: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GoalResultPage(
                            isKick: true,
                          ),
                        )),
                    isKick: true,
                  ),
                  Expanded(child: Text('Campo')),
                  // Goleira
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
