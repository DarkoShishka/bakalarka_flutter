import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text(
          "Bakalarka",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(onPressed: () {
          Navigator.pushNamed(context, '/settings');
        }, icon: const Icon(Icons.menu), color: Colors.white,),
      ),
      backgroundColor: Colors.white,
      body: const Text(
        "Bakalrsky projekt",
        style: TextStyle(
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
