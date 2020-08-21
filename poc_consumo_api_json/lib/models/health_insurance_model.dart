import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'health_insurance_model.g.dart';

@HiveType(typeId: 0) //! DO NOT CHANGE THIS INDEX
class HealthInsurance {
  @HiveField(0) //! DO NOT CHANGE THIS INDEX
  final String name;
  @HiveField(1) //! DO NOT CHANGE THIS INDEX
  final String country;
  @HiveField(2) //! DO NOT CHANGE THIS INDEX
  final String city;

  HealthInsurance({
    @required this.name,
    @required this.country,
    @required this.city,
  });
}
