import 'package:eight_bit_penalty/home_page.dart';
import 'package:eight_bit_penalty/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    delayToNavigate();
  }

  Future delayToNavigate() async {
    return await Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(pageBuilder: (BuildContext context,
            Animation animation, Animation secondaryAnimation) {
          return MyHomePage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Text('Splash'),
    );
  }
}
