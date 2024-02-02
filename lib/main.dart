import 'package:bakalarka_flutter/l10n/l10n.dart';
import 'package:bakalarka_flutter/pages/home.dart';
import 'package:bakalarka_flutter/pages/languages.dart';
import 'package:bakalarka_flutter/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => const Home(),
      '/home': (context) => const Home(),
      '/settings': (context) => const Settings(),
      '/languages': (context) => const Language(),
    },
    debugShowCheckedModeBanner: false,
    supportedLocales: L10n.all,
    locale: const Locale('sr'),
    localizationsDelegates: const [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate
    ],
  ));
}