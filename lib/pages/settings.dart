import 'package:bakalarka_flutter/l10n/l10n.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _Settings();
}

class _Settings extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(translation(context).settings, style: TextStyle(color: Colors.white),),
      ),
      body: SafeArea(
        child: Card(
          child: ListTile(
            leading: const Icon(
              Icons.language,
              color: Colors.black87
            ),
            onTap: (){
              Navigator.pushNamed(context, '/languages');
            },
            title: Text(translation(context).language),
          ),
        ),
      ),
    );
  }

}