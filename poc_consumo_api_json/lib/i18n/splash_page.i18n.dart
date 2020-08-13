import 'package:i18n_extension/i18n_extension.dart';
import 'package:poc_consumo_api_json/i18n/i18n_keys.dart';

extension Localization on String {
  static var _t = Translations.byLocale("en_us") +
      {
        "en_us": {
          splashPageTextGreetings: "Hi,",
          splashPageTextPresentation: "I'm Dr. Rafael",
          splashPageTextWelcome: "Welcome to",
        },
        "pt_br": {
          splashPageTextGreetings: "Olá,",
          splashPageTextPresentation: "Eu sou o Dr. Rafael",
          splashPageTextWelcome: "Seja bem-vindo ao",
        }
      };

  String get i18n => localize(this, _t);
}
