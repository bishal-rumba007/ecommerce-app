import 'package:ecommerce_app/src/shared/enums/language.dart';

enum Country {
  dubai(name: "Dubai", language: Language.arabic, flag: "🇦🇪"),
  oman(name: "Oman", language: Language.arabic, flag: "🇴🇲"),
  saudiArabia(name: "Saudi Arabia", language: Language.arabic, flag: "🇸🇦"),
  qatar(name: "Qatar", language: Language.arabic, flag: "🇶🇦");

  const Country({
    required this.name,
    required this.language,
    required this.flag,
  });

  final String name;
  final Language language;
  final String flag;
}