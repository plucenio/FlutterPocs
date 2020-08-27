import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:poc_consumo_api_json/models/health_insurance_model.dart';
import 'package:poc_consumo_api_json/utils/constants.dart';

class HealthInsuranceStateManagement with ChangeNotifier {
  List _healthInsuranceList = <HealthInsurance>[];

  List get healthInsuranceList => _healthInsuranceList;

  Future<Box> openHealthInsuranceBox() async {
    return await Hive.openBox<HealthInsurance>(healthInsuranceBoxName,
        encryptionKey: Hive.generateSecureKey());
  }

  Box getHealthInsuranceBox() {
    return Hive.box<HealthInsurance>(healthInsuranceBoxName);
  }

  addItem(HealthInsurance healthInsurance) async {
    final box = await openHealthInsuranceBox();

    box.add(healthInsurance);
    notifyListeners();
  }

  getItems() async {
    final box = await openHealthInsuranceBox();
    _healthInsuranceList = box.values.toList();

    notifyListeners();
  }

  updateItem(int index, HealthInsurance healthInsurance) async {
    final box = getHealthInsuranceBox();
    box.putAt(index, healthInsurance);

    notifyListeners();
  }

  deleteItem(int index) async {
    final box = getHealthInsuranceBox();

    box.deleteAt(index);

    getItems();

    notifyListeners();
  }
}
