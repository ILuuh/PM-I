import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cardápio"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(12),
                child: Text("Lanche com Batata", style: theme.textTheme.headline5
                ),
                ),
                Padding (
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Image.asset("assets/lanche.jpg", height: 550),
                ),
                Padding(
                  padding: const EdgeInsets.all(7),
                  child:Text(
                  "Ingredientes",
                  style: theme.textTheme.headline5,
                ),
                ),
                const Text("Pão"),
                const Text("Tomate"),
                const Text("hamburguer"),
                const Text("Alface"),
                const Text("Batata"),
            ],
          ),
        ),
      ),
    );
  }
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cardápio",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());