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
        title: const Text("Settings", style: TextStyle(color: Colors.white),),
      ),
      body: SafeArea(
        child: Card(
          child: ListTile(
            onTap: (){
              Navigator.pushNamed(context, '/languages');
            },
            title: const Text("Language"),
          ),
        ),
      ),
    );
  }

}