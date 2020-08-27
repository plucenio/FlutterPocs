import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poc_consumo_api_json/app/results/api_result.dart';
import 'package:poc_consumo_api_json/app/results/network_exceptions.dart';
import 'package:poc_consumo_api_json/cubit/ranking_cubit.dart';
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
  // ApiService _apiService;

  @override
  void initState() {
    widget.title == hospital_ranking
        ? context.bloc<RankingCubit>().getHospitalRanking()
        : context.bloc<RankingCubit>().getUserRanking();
    // _apiService = ApiService();
    super.initState();
  }

  Widget getHospitals(HospitalList hospitalList) {
    return ListView.builder(
      itemCount: hospitalList.hospitals.length,
      itemBuilder: (context, index) {
        var hospital = hospitalList.hospitals[index];
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

  Widget getUsers(UserList userList) {
    return ListView.builder(
      itemCount: userList.users.length,
      itemBuilder: (context, index) {
        var hospital = userList.users[index];
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

  // Future<Widget> getHospitals() async {
  //   HospitalList _hospitalList = await _apiService.fetchHospitalRanking();
  //   return ListView.builder(
  //     itemCount: _hospitalList.hospitals.length,
  //     itemBuilder: (context, index) {
  //       var hospital = _hospitalList.hospitals[index];
  //       return Padding(
  //         padding: const EdgeInsets.all(5.0),
  //         child: ItemRankingWidget(
  //           type: widget.title,
  //           context: context,
  //           name: hospital.name,
  //           score: hospital.score,
  //           index: index,
  //         ),
  //       );
  //     },
  //   );
  // }

  // Future<Widget> getUsers() async {
  //   UserList _userList = await _apiService.fetchUserRanking();
  //   return ListView.builder(
  //     itemCount: _userList.users.length,
  //     itemBuilder: (context, index) {
  //       var user = _userList.users[index];
  //       return Padding(
  //         padding: const EdgeInsets.all(5.0),
  //         child: ItemRankingWidget(
  //           context: context,
  //           name: user.name,
  //           score: user.score,
  //           index: index,
  //           type: widget.title,
  //         ),
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
        titleWidget: Text(widget.title),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: BlocBuilder<RankingCubit, RankingState>(
            builder: (context, state) {
              return state.when(idle: () {
                return Center();
              }, loading: () {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }, loaded: (list) {
                return widget.title == hospital_ranking
                    ? getHospitals(list as HospitalList)
                    : getUsers(list as UserList);
              }, error: (NetworkExceptions error) {
                return Center(
                  child: Text(NetworkExceptions.getErrorMessage(error)),
                );
              });
            },
          ),
        )

        // body: FutureBuilder(
        //   future: widget.title == hospital_ranking ? getHospitals() : getUsers(),
        //   builder: (context, snapshot) {
        //     if (snapshot.hasData) {
        //       return Padding(padding: EdgeInsets.all(10), child: snapshot.data);
        //     } else {
        //       return Center(
        //         child: CircularProgressIndicator(
        //           backgroundColor: Colors.transparent,
        //           valueColor: AlwaysStoppedAnimation<Color>(pacificBlueColor),
        //         ),
        //       );
        //     }
        //   },
        // ),
        );
  }
}
