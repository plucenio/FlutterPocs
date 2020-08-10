import 'package:flutter/material.dart';
import 'package:poc_consumo_api_json/models/hospital.dart';
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

  Future<List<Hospital>> getHospitalNames() async =>
      await _apiService.fetchPost().then((value) => value.hospitals);

  Future<String> getWidget() =>
      getHospitalNames().then((value) => value.first.name);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Obtendo dados da Web - Exemplo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Pegando dados da Web'),
            ),
            body: FutureBuilder(
                future: getWidget(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Center(
                      child: Text(
                        snapshot.data,
                        style: TextStyle(fontSize: 20.0),
                      ),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                })));
  }
}
