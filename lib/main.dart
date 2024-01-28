import 'package:bakalarka_flutter/pages/home.dart';
import 'package:bakalarka_flutter/pages/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => Home(),
      '/home': (context) => Home(),
      '/settings': (context) => Settings(),
    },
    debugShowCheckedModeBanner: false,
  ));
}