import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
        title: Text(AppLocalizations.of(context)!.language, style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          SafeArea(
            child: Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/uk.png'),
                ),
                onTap: () {

                },
                title: Text(AppLocalizations.of(context)!.english),
              ),
            ),
          ),
          SafeArea(
            child: Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/sk.png'),
                ),
                onTap: () {

                },
                title: Text(AppLocalizations.of(context)!.slovak),
              ),
            ),
          ),
          SafeArea(
            child: Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/rs.png'),
                ),
                onTap: () {

                },
                title: Text(AppLocalizations.of(context)!.serbian),
              ),
            ),
          ),
        ],
      ),
    );
  }

}