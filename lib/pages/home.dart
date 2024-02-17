import 'package:flutter/material.dart';

import '../ui_tools.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List <Widget> list = [
    const Stock(
      text: "Stock1",
    ),
    const Stock(
      text: "Stock2",
    ),
    const Stock(
      text: "Stock1",
    ),
    const Stock(
      text: "Stock1",
    ),
    const Stock(
      text: "Stock1",
    ),
    const Stock(
      text: "Stock1",
    ),
    const Stock(
      text: "Stock1",
    ),
  ];

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
      body: ListView(
        children: list,
      ),
    );
  }
}
