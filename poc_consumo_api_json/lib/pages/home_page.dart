import 'package:flutter/material.dart';
import 'package:poc_consumo_api_json/models/hospital.dart';
import 'package:poc_consumo_api_json/models/hospital_list.dart';
import 'package:poc_consumo_api_json/services/api_service.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<HospitalList> hospitals;
  ApiService _apiService;

  @override
  void initState() {
    _apiService = ApiService();
    hospitals = _apiService.fetchPost();
    super.initState();
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
          title: Text('Pegando dados da Web'),
        ),
        body: Center(
          child: FutureBuilder<Hospital>(
            future: hospitals.then((value) => value.hospitals.first),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Id :' + snapshot.data.name.toString()));
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              // By default, show a loading spinner
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
