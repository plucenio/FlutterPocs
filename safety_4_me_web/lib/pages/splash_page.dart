import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../shared/utils/constants.dart';
import 'home/home_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Widget widgetShowing = SizedBox();

  @override
  void initState() {
    super.initState();
    showAnimations();
    //delayToNavigate();
  }

  var textStyle = TextStyle(
      fontFamily: "Roboto",
      fontSize: 36,
      color: pacificBlueColor,
      fontWeight: FontWeight.normal);

  Text textGreetings = Text('Olá', key: ValueKey(1));

  Text textPresentation = Text('Eu sou o Dr. Rafael', key: ValueKey(2));
  Text textWelcome = Text('Seja bem-vindo ao', key: ValueKey(3));

  Future<void> showAnimations() async {
    await Future.delayed(Duration(seconds: 2), () {
      setState(() {
        widgetShowing = textGreetings;
      });
    });
    await Future.delayed(Duration(seconds: 2), () {
      setState(() {
        widgetShowing = textPresentation;
      });
    });
    await Future.delayed(Duration(seconds: 2), () {
      setState(() {
        widgetShowing = textWelcome;
      });
    });
    await Future.delayed(Duration(seconds: 2), () {
      setState(() {
        widgetShowing = Image.asset(logoSafety4MeSource, key: ValueKey(4));
      });
    });
    await delayToNavigate();
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
    var backgroundImageSource =
        kIsWeb ? splashScreenFittedSource : splashScreenSource;

    return Scaffold(
      body: DefaultTextStyle(
        style: textStyle,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(backgroundImageSource), fit: BoxFit.cover),
          ),
          child: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: Duration(seconds: 1),
                    builder: (context, value, child) {
                      return AnimatedOpacity(
                        duration: Duration(seconds: 1),
                        opacity: value,
                        child: Image.asset(
                          rafaelRoundedSource,
                          width: MediaQuery.of(context).size.width * 0.2,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                  Expanded(
                    child: AnimatedSwitcher(
                      duration: const Duration(seconds: 1),
                      transitionBuilder: (child, animation) {
                        return FadeTransition(child: child, opacity: animation);
                      },
                      child: widgetShowing,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
