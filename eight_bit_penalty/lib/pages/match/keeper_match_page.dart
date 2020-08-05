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
        appBar: AppBar(
          title: Text('Keeper View'),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/ball.png',
                            color: Colors.grey,
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'assets/images/ball.png',
                            color: Colors.grey,
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'assets/images/ball.png',
                            color: Colors.grey,
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'assets/images/ball.png',
                            color: Colors.grey,
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'assets/images/ball.png',
                            color: Colors.grey,
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/ball.png',
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'assets/images/ball.png',
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'assets/images/ball.png',
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'assets/images/ball.png',
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'assets/images/ball.png',
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                color: Colors.green,
                child: Text('Campo'),
              ),
            ),
          ],
        ));
  }
}
