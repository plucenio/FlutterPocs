import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../widgets/my_container.dart';
import '../../widgets/my_scaffold.dart';
import '../finding_opponent/finding_match_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  bool ready = false;
  //FluttieAnimationController controller;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    //getAnimation();
    _animationController = AnimationController(vsync: this);
  }

  @override
  dispose() {
    super.dispose();
    _animationController.dispose();
  }

  void onPressedMethod() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FindingMatchPage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    return MyScaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: MyContainer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Lottie.asset(
                'assets/animations/soccer-player.json',
                controller: _animationController,
                onLoaded: (composition) {
                  _animationController.duration = composition.duration;

                  _animationController.repeat();
                },
                width: _screenSize.width * 0.5,
                height: _screenSize.height * 0.5,
              ),
              RaisedButton(
                child: Text('Search match'),
                onPressed: onPressedMethod,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
