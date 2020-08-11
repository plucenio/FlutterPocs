import 'package:flutter/material.dart';
import 'package:poc_consumo_api_json/services/api_service.dart';

import '../models/hospital_list.dart';
import 'widgets/item_hospital_ranking_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService _apiService;
  HospitalList _hospitalList;

  @override
  void initState() {
    _apiService = ApiService();
    super.initState();
  }

  Future<Widget> getHospitals() async {
    _hospitalList = await _apiService.fetchPost();
    return Expanded(
      child: ListView.builder(
        itemCount: _hospitalList.hospitals.length,
        itemBuilder: (context, index) {
          var hospital = _hospitalList.hospitals[index];
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: ItemHospitalRankingWidget(
              context: context,
              hospital: hospital,
              index: index,
            ),
          );
        },
      ),
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
              return Padding(padding: EdgeInsets.all(10), child: snapshot.data);
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
