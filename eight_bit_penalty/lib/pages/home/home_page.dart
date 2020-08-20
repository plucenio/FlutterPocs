import 'package:flutter/material.dart';
import 'package:fluttie/fluttie.dart';
import '../../widgets/my_container.dart';
import '../../widgets/my_scaffold.dart';
import '../finding_opponent/finding_match_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool ready = false;
  FluttieAnimationController controller;

  @override
  void initState() {
    super.initState();
    getAnimation();
  }

  @override
  dispose() {
    super.dispose();
    controller?.dispose();
  }

  getAnimation() async {
    bool canbeused = await Fluttie.isAvailable();
    if (!canbeused) {
      print("Deu ruim, não vai rolar gurizão");
      return;
    }
    var instance = Fluttie();
    var emojiComposition = await instance.loadAnimationFromAsset(
      "assets/animations/soccer-player.json",
    );
    controller = await instance.prepareAnimation(
      emojiComposition,
      duration: Duration(seconds: 5),
    );
    if (mounted) {
      setState(() {
        ready = true;
        controller.start();
      });
    }
  }

  void onPressedMethod() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FindingMatchPage(),
        ));
  }

  Widget buildAnimation(BuildContext context) {
    return Column(
      children: [FluttieAnimation(controller)],
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget contentAnimation =
        ready ? buildAnimation(context) : CircularProgressIndicator();

    return MyScaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: MyContainer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              contentAnimation,
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
