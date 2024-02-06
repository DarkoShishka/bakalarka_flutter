import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../l10n/l10n.dart';
import '../main.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _Language();
}

class _Language extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context)!.language,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      //TODO: create Language class, and get this part cleaner
      body: Column(
        children: [
          SafeArea(
            child: Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/uk.png'),
                ),
                onTap: () async {
                  Locale locale = await setLocale("en");
                  MyApp.setLocale(context, locale);
                },
                title: Text(translation(context).english),
              ),
            ),
          ),
          SafeArea(
            child: Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/sk.png'),
                ),
                onTap: () async {
                  Locale locale = await setLocale("sk");
                  MyApp.setLocale(context, locale);
                },
                title: Text(translation(context).slovak),
              ),
            ),
          ),
          SafeArea(
            child: Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/rs.png'),
                ),
                onTap: () async {
                  Locale locale = await setLocale("sr");
                  MyApp.setLocale(context, locale);
                },
                title: Text(translation(context).serbian),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
