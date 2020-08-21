import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:poc_consumo_api_json/app/size_config.dart';
import 'package:poc_consumo_api_json/data/state_management/health_insurance_state_management.dart';
import 'package:poc_consumo_api_json/app/extensions/size_extension.dart';
import 'package:poc_consumo_api_json/models/health_insurance_model.dart';
import 'package:poc_consumo_api_json/pages/widgets/default_scaffold.dart';
import 'package:poc_consumo_api_json/pages/widgets/health_insurance_item_widget.dart';
import 'package:poc_consumo_api_json/utils/constants.dart';
import 'package:provider/provider.dart';
import 'package:poc_consumo_api_json/i18n/health_insurance_page.i18n.dart';
import 'package:poc_consumo_api_json/i18n/i18n_keys.dart';

class HealthInsurancePage extends StatefulWidget {
  @override
  _HealthInsurancePageState createState() => _HealthInsurancePageState();
}

class _HealthInsurancePageState extends State<HealthInsurancePage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();

  final TextEditingController countryController = TextEditingController();

  final TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    context.watch<HealthInsuranceStateManagement>().getItems();

    return Consumer<HealthInsuranceStateManagement>(
      builder: (context, stateManagement, child) {
        return DefaultScaffold(
          titleWidget: Text(healthInsuranceTitle.i18n),
          body: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                Container(
                  height: 85.height,
                  child: ListView.builder(
                    itemCount: stateManagement.healthInsuranceList.length,
                    itemBuilder: (context, index) {
                      HealthInsurance insurance =
                          stateManagement.healthInsuranceList[index];
                      return Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 2.height,
                          horizontal: 4.5.width,
                        ),
                        height: 13.height,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 2.width),
                              width: 16.width,
                              decoration: BoxDecoration(
                                color: pacificBlueColor,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.healing,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: kIsWeb ? 1.height : 3.height,
                                  horizontal: 3.width,
                                ),
                                child:
                                    HealthInsuranceItemWidget(item: insurance),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.width),
                              child: PopupMenuButton(
                                onSelected: (item) {
                                  switch (item) {
                                    case healthInsuranceUpdateText:
                                      nameController.text = insurance.name;
                                      cityController.text = insurance.city;
                                      countryController.text =
                                          insurance.country;
                                      inputItemDialog(context,
                                          healthInsuranceUpdateText, index);
                                      break;
                                    case healthInsuranceDeleteText:
                                      stateManagement.deleteItem(index);
                                      break;
                                  }
                                },
                                itemBuilder: (context) {
                                  return [
                                    PopupMenuItem(
                                      value: healthInsuranceUpdateText,
                                      child:
                                          Text(healthInsuranceUpdateText.i18n),
                                    ),
                                    PopupMenuItem(
                                      value: healthInsuranceDeleteText,
                                      child:
                                          Text(healthInsuranceDeleteText.i18n),
                                    ),
                                  ];
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          floatingButton: FloatingActionButton(
              backgroundColor: pacificBlueColor,
              onPressed: () {
                inputItemDialog(context, healthInsuranceAddText);
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
              )),
        );
      },
    );
  }

  inputItemDialog(BuildContext context, String action, [int index]) {
    var healthInsuranceDatabase =
        Provider.of<HealthInsuranceStateManagement>(context, listen: false);

    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 40,
            ),
            height: 60.height,
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Text(
                      action == healthInsuranceAddText
                          ? healthInsuranceAddItemText.i18n
                          : healthInsuranceUpdateItemText.i18n,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: pacificBlueColor,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: nameController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return healthInsuranceEmptyField.i18n;
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: healthInsuranceItemName.i18n,
                        labelStyle: TextStyle(
                          color: blackSafety4MeColor.withAlpha(150),
                        ),
                      ),
                      cursorColor: pacificBlueColor,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      controller: cityController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return healthInsuranceEmptyField.i18n;
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: healthInsuranceItemCity.i18n,
                        labelStyle: TextStyle(
                          color: blackSafety4MeColor.withAlpha(150),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      controller: countryController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return healthInsuranceEmptyField.i18n;
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: healthInsuranceItemCountry.i18n,
                        labelStyle: TextStyle(
                          color: blackSafety4MeColor.withAlpha(150),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    RaisedButton(
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          if (action == healthInsuranceAddText) {
                            await healthInsuranceDatabase
                                .addItem(HealthInsurance(
                              name: nameController.text,
                              city: cityController.text,
                              country: countryController.text,
                            ));
                          } else {
                            await healthInsuranceDatabase.updateItem(
                                index,
                                HealthInsurance(
                                  name: nameController.text,
                                  city: cityController.text,
                                  country: countryController.text,
                                ));
                          }
                          nameController.clear();
                          cityController.clear();
                          countryController.clear();

                          healthInsuranceDatabase.getItems();

                          Navigator.pop(context);
                        }
                      },
                      color: pacificBlueColor,
                      child: Text(
                        action == healthInsuranceAddText
                            ? healthInsuranceAddText.i18n
                            : healthInsuranceUpdateText.i18n,
                        style: TextStyle(
                          fontSize: 16,
                          color: alabasterColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
