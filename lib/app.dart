import 'package:flutter/material.dart';
import 'package:linguagens/home_page.dart';
import 'package:linguagens/view_model.dart';
import 'package:provider/provider.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LanguagueViewModel>(create: (_) => LanguagueViewModel()),
      ],
      child: MaterialApp(
        title: "Linguagens",
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const HomePage(),
      ),
    );
  }
}