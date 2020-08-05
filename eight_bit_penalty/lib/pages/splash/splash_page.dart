import 'package:flutter/material.dart';

import '../../widgets/my_scaffold.dart';
import '../home/home_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    delayToNavigate();
  }

  Future delayToNavigate() async {
    return await Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) {
          return HomePage();
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
