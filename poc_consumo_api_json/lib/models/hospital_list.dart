import 'hospital.dart';

class HospitalList {
  List<Hospital> hospitals;

  HospitalList({this.hospitals});

  factory HospitalList.fromJson(List<dynamic> json) {
    return HospitalList(
        hospitals: json
            .map((e) => Hospital.fromJson(e as Map<String, dynamic>))
            .toList());
  }
}
