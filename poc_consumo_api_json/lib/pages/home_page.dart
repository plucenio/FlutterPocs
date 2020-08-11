import 'package:flutter/material.dart';
import 'package:poc_consumo_api_json/services/api_service.dart';

import '../models/hospital_list.dart';

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
          var item = _hospitalList.hospitals[index];
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey,
                //     blurRadius: 5,
                //   ),
                // ],
                color: Colors.white,
                border: Border.all(color: Colors.blue, width: 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                color: Colors.white,
                highlightColor: Colors.white,
                focusColor: Colors.white,
                elevation: 0,
                disabledElevation: 0,
                focusElevation: 0,
                highlightElevation: 0,
                hoverElevation: 0,
                splashColor: Colors.blue[900],
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.local_hospital,
                                color: index <= 2 ? Colors.yellow : Colors.blue,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('${index + 1} º'),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              '${item.name}',
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text('${item.score}'),
                    )
                  ],
                ),
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(left: 8.0),
              //       child: Text('${index + 1} º'),
              //     ),
              //     Text(
              //       '${item.name}',
              //       textAlign: TextAlign.start,
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(right: 8.0),
              //       child: Text('${item.score}'),
              //     )
              //   ],
              // ),
            ),
          );
        },
      ),
    );
    // return Container(
    //   child: Column(children: [
    //     for (var i
    //         in await _apiService.fetchPost().then((value) => value.hospitals))
    //       Row(
    //         children: [
    //           Text((position++).toString()),
    //           Text("º"),
    //           Spacer(),
    //           Text(i.name),
    //           Spacer(),
    //           Text(i.score.toString())
    //         ],
    //       )
    //   ]),
    // );
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
