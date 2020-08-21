import 'package:i18n_extension/i18n_extension.dart';
import 'package:poc_consumo_api_json/i18n/i18n_keys.dart';

extension Localization on String {
  static var _t = Translations.byLocale("en_us") +
      {
        "en_us": {
          healthInsuranceTitle: "Health Insurance List",
          healthInsuranceAddItemText: "Add Health insurance",
          healthInsuranceUpdateItemText: "Update Health insurance",
          healthInsuranceUpdateText: "Update",
          healthInsuranceDeleteText: "Delete",
          healthInsuranceAddText: "Add",
          healthInsuranceEmptyField: "Required",
          healthInsuranceItemName: "Name",
          healthInsuranceItemCity: "City",
          healthInsuranceItemCountry: "Country",
        },
        "pt_br": {
          healthInsuranceTitle: "Lista de Planos de Saúde",
          healthInsuranceAddItemText: "Adicionar plano de saúde",
          healthInsuranceUpdateItemText: "Atualizar plano de saúde",
          healthInsuranceUpdateText: "Atualizar",
          healthInsuranceDeleteText: "Excluir",
          healthInsuranceAddText: "Adicionar",
          healthInsuranceEmptyField: "Campo obrigatório",
          healthInsuranceItemName: "Nome",
          healthInsuranceItemCity: "Cidade",
          healthInsuranceItemCountry: "País",
        }
      };

  String get i18n => localize(this, _t);
}
