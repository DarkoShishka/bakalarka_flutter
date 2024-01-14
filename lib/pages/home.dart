import 'package:bakalarka_flutter/ui_tools.dart';
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
        backgroundColor: AppColors.mainColor,
        centerTitle: true,
        title: const BakalarkaText(text: "Bakalarka",),
      ),
      backgroundColor: AppColors.mainColor,
      body: const Text("Bakalrsky projekt", style: TextStyle(
        color: AppColors.secondaryColor,
      ),),
    );
  }
}
