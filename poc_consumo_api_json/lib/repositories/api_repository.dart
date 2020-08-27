import 'package:dio/dio.dart';
import 'package:poc_consumo_api_json/app/results/api_result.dart';
import 'package:poc_consumo_api_json/app/results/network_exceptions.dart';
import 'package:poc_consumo_api_json/models/hospital_list.dart';
import 'package:poc_consumo_api_json/models/user_list.dart';

class ApiRepository {
  Dio dio = Dio();

  ApiRepository();

  Future<ApiResult<HospitalList>> fetchHospitalList() async {
    try {
      Response response = await dio
          .get("https://safety4me.azurewebsites.net/api/RankingHospital/");
      HospitalList hospitalList = HospitalList.fromJson(response.data);

      return ApiResult.success(data: hospitalList);
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<UserList>> fetchUserList() async {
    try {
      final response = await dio
          .get("https://safety4me.azurewebsites.net/api/User/UserRanking");
      UserList userList = UserList.fromJson(response.data);

      return ApiResult.success(data: userList);
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}
