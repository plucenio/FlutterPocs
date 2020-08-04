import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark
    )
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueGrey[300],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(length: 2, child: Scaffold(
          appBar: AppBar(
            title: Text('Cambly'),
            bottom: TabBar(
              tabs: <Widget>[
                Text("Home"),
                Text("Tutors"),
              ],
             ),
          ),
          body: TabBarView(
            children: <Widget>[
              Text('data'),
              Text('data')
            ]
          )
      )
    ));
  }
}
