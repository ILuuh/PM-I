import 'package:flutter/material.dart';
import 'package:plural/home_page.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Plural",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: HomePage(),
    );
  }
}