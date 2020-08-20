import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import '../home/home_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      image: Image.asset(
        "assets/images/ball.png",
        height: 500,
        width: 500,
      ),
      backgroundColor: Colors.green,
      gradientBackground: LinearGradient(
          colors: [Colors.green, Colors.green[200]],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter),
      navigateAfterSeconds: HomePage(),
    );
  }
}
