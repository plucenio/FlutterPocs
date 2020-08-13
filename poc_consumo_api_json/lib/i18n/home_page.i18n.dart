import 'package:i18n_extension/i18n_extension.dart';
import 'package:poc_consumo_api_json/i18n/i18n_keys.dart';

extension Localization on String {
  static var _t = Translations.byLocale("en_us") +
      {
        "en_us": {
          homePageUserRankingText: "User Ranking",
          homePageHospitalRanking: "Hospital Ranking",
          homePageCarousel: "Carousel Demo",
        },
        "pt_br": {
          homePageUserRankingText: "Ranking de Usuários",
          homePageHospitalRanking: "Ranking de Hospitais",
          homePageCarousel: "Carrossel Demo",
        }
      };

  String get i18n => localize(this, _t);
}
