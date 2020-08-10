import 'package:flutter/material.dart';
import 'package:poc_consumo_api_json/services/api_service.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService _apiService;

  @override
  void initState() {
    _apiService = ApiService();
    super.initState();
  }

  Future<Widget> getHospitals() async {
    int position = 1;
    return Container(
      child: Column(children: [
        for (var i
            in await _apiService.fetchPost().then((value) => value.hospitals))
          Row(
            children: [
              Text((position++).toString()),
              Text("º"),
              Spacer(),
              Text(i.name),
              Spacer(),
              Text(i.score.toString())
            ],
          )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Obtendo dados da Web - Exemplo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Ranking de hospitais'),
            ),
            body: FutureBuilder(
                future: getHospitals(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Padding(
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: snapshot.data,
                        ));
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                })));
  }
}
