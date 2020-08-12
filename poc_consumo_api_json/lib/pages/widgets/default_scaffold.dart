import 'package:flutter/material.dart';
import 'package:poc_consumo_api_json/utils/constants.dart';

class DefaultScaffold extends StatelessWidget {
  final Widget titleWidget;
  final Widget body;

  const DefaultScaffold({
    Key key,
    @required this.titleWidget,
    @required this.body,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var splashBackground =
        MediaQuery.of(context).size.width > MediaQuery.of(context).size.height
            ? splashScreenFittedSource
            : splashScreenSource;
    return Scaffold(
      appBar: titleWidget != null
          ? AppBar(
              title: titleWidget,
              backgroundColor: pacificBlueColor,
              centerTitle: true,
            )
          : AppBar(
              backgroundColor: Colors.transparent,
            ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                Colors.transparent.withOpacity(0.9),
                BlendMode.dstATop,
              ),
              fit: BoxFit.cover,
              image: AssetImage(
                splashBackground,
              ),
            ),
          ),
          child: body),
    );
  }
}
