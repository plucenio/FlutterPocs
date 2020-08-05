import 'package:flutter/material.dart';

import 'keeper_position_widget.dart';

class GoalKeeperWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      KeeperPositionWidget(position: 1),
                      KeeperPositionWidget(position: 2),
                      KeeperPositionWidget(position: 3),
                      KeeperPositionWidget(position: 4),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      KeeperPositionWidget(position: 5),
                      KeeperPositionWidget(position: 6),
                      KeeperPositionWidget(position: 7),
                      KeeperPositionWidget(position: 8),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
