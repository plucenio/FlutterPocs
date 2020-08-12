import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:poc_consumo_api_json/models/hospital_list.dart';
import 'package:poc_consumo_api_json/models/user_list.dart';
import 'package:poc_consumo_api_json/services/api_service.dart';
import 'package:poc_consumo_api_json/utils/constants.dart';

import 'widgets/default_scaffold.dart';
import 'widgets/item_ranking_widget.dart';

class RankingPage extends StatefulWidget {
  final title;

  const RankingPage({Key key, this.title}) : super(key: key);
  @override
  _RankingPageState createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {
  ApiService _apiService;

  @override
  void initState() {
    _apiService = ApiService();
    super.initState();
  }

  Future<Widget> getHospitals() async {
    HospitalList _hospitalList = await _apiService.fetchHospitalRanking();
    return ListView.builder(
      itemCount: _hospitalList.hospitals.length,
      itemBuilder: (context, index) {
        var hospital = _hospitalList.hospitals[index];
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: ItemRankingWidget(
            type: widget.title,
            context: context,
            name: hospital.name,
            score: hospital.score,
            index: index,
          ),
        );
      },
    );
  }

  Future<Widget> getUsers() async {
    UserList _userList = await _apiService.fetchUserRanking();
    return ListView.builder(
      itemCount: _userList.users.length,
      itemBuilder: (context, index) {
        var user = _userList.users[index];
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: ItemRankingWidget(
            context: context,
            name: user.name,
            score: user.score,
            index: index,
            type: widget.title,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      titleWidget: Text(widget.title),
      body: FutureBuilder(
        future: widget.title == hospital_ranking ? getHospitals() : getUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Padding(padding: EdgeInsets.all(10), child: snapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.transparent,
                valueColor: AlwaysStoppedAnimation<Color>(pacificBlueColor),
              ),
            );
          }
        },
      ),
    );
  }
}
