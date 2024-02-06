import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('sk'),
    const Locale('sr'),
  ];
}

const String LAGUAGE_CODE = 'languageCode';


Future<Locale> setLocale(String languageCode) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  await _prefs.setString(LAGUAGE_CODE, languageCode);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  String languageCode = _prefs.getString(LAGUAGE_CODE) ?? "en";
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case "en":
      return const Locale("en", '');
    case "sk":
      return const Locale("sk", "");
    case "sr":
      return const Locale("sr", "");
    default:
      return const Locale("en", '');
  }
}

AppLocalizations translation(BuildContext context) {
  return AppLocalizations.of(context)!;
}