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
    return Scaffold(
      appBar: AppBar(
        title: titleWidget,
        backgroundColor: pacificBlueColor,
        centerTitle: true,
      ),
      body: body,
    );
  }
}
