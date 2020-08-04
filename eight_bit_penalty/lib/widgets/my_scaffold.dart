import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({Key key, this.appBar, this.body}) : super(key: key);
  final AppBar appBar;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar ??
          AppBar(
            title: Text('Nosso Aplicativo'),
          ),
      body: body,
    );
  }
}
