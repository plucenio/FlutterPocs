import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:poc_consumo_api_json/models/health_insurance_model.dart';
import 'package:poc_consumo_api_json/utils/constants.dart';
import 'package:poc_consumo_api_json/app/extensions/size_extension.dart';

class HealthInsuranceItemWidget extends StatelessWidget {
  final HealthInsurance item;

  const HealthInsuranceItemWidget({Key key, @required this.item})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.name,
          style: TextStyle(
            color: pacificBlueColor,
            fontWeight: FontWeight.w600,
            fontSize: kIsWeb ? 1.5.text : 4.5.text,
          ),
        ),
        SizedBox(
          height: kIsWeb ? 0.2.height : 1.height,
        ),
        RichText(
          text: TextSpan(
            text: item.city,
            style: TextStyle(
              color: blackSafety4MeColor,
              fontSize: kIsWeb ? 1.text : 3.text,
            ),
            children: [
              TextSpan(
                text: ' - ${item.country}',
                style: TextStyle(
                  color: blackSafety4MeColor,
                  fontSize: kIsWeb ? 1.5.text : 4.5.text,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
