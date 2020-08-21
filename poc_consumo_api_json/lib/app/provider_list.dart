import 'package:poc_consumo_api_json/data/state_management/health_insurance_state_management.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<HealthInsuranceStateManagement>(
    create: (context) => HealthInsuranceStateManagement(),
  ),
];
