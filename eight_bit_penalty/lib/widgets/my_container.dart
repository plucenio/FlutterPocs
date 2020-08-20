import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  final Widget child;

  const MyContainer({Key key, this.child}) : super(key: key);

  @override
  _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.green, Colors.green[200]],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: widget.child,
    );
  }
}
