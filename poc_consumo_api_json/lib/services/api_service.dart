import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:poc_consumo_api_json/models/hospital_list.dart';
import 'package:poc_consumo_api_json/models/user_list.dart';

import '../models/hospital_list.dart';

class ApiService {
  Future<HospitalList> fetchPost() async {
    final response = await http
        .get("https://safety4me.azurewebsites.net/api/RankingHospital");

    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return HospitalList.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Falha ao carregar um post');
    }
  }

  Future<UserList> fetchUserRanking() async {
    final response = await http
        .get("https://safety4me.azurewebsites.net/api/User/UserRanking");

    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return UserList.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Falha ao carregar um post');
    }
  }
}
