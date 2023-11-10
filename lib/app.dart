import 'package:flutter/material.dart';
import 'package:musica/home_page.dart';
import 'package:musica/musica_page.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Musica",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      //home: const HomePage(),
      initialRoute: "/",
      routes:  {
        "/":(context) => const HomePage(),
        "/musica":(context) => const MusicaPage(),
      },
    );
  }
}