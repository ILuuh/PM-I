import 'package:diacritic/diacritic.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final nomeController = TextEditingController();
  final periodoController = TextEditingController();

 HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: nomeController,
                decoration: const InputDecoration(
                  labelText: "Nome",
                ),
              ),
              TextField(
                controller: periodoController,
                decoration: const InputDecoration(
                  labelText: "Periodo",
                ),
              ),
               SizedBox(
                height: 50,
                width: double.maxFinite,
                child: ElevatedButton(onPressed: () => cumprimentar(context), child: const Text("Cumprimente"),)
              ),
            ],
          ),
        ),
      ),
    );
  }
  void cumprimentar(BuildContext context){
    final nome = nomeController.text;
    final periodo = removeDiacritics(periodoController.text.toLowerCase());

    if (periodo == "manha") {
      final snackBar = SnackBar(content: Text("Bom dia, $nome"),);

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;

    }else if(periodo == "tarde"){
      final snackBar = SnackBar(content: Text("Boa Tarde, $nome"),);

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;

    }else if(periodo == "noite"){
      final snackBar = SnackBar(content: Text("Boa Noite, $nome"),);

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;
    }
  }
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cumprimento",
      theme: ThemeData(primarySwatch: Colors.amber),
      home: HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());