import 'dart:math';

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class KeeperPositionWidget extends StatelessWidget {
  final int position;

  const KeeperPositionWidget({Key key, @required this.position})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 4, left: 4, right: 4),
        child: Container(
          height: double.infinity,
          child: RaisedButton(
            color: Colors.white,
            child: Text('$position'),
            elevation: 0,
            onPressed: () {
              var randomKick = Random().nextInt(7) + 1;
              var result =
                  randomKick == position ? 'Você defendeu!' : 'Foi Gol';
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text(result),
                  );
                },
              );
            },
          ),
          decoration: BoxDecoration(border: Border.all(width: 1)),
        ),
      ),
    );
  }
}
