import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final produtoController = TextEditingController();

  final quantidadeController = TextEditingController();

  final precoController = TextEditingController();

  static const aVista = "a_vista";
  static const aPrazo = "a_prazo";

  var formaPagamento = aVista;

  final fomatter = NumberFormat.currency(
    locale: "pt-BR",
    symbol: "R\$",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: produtoController,
              decoration: const InputDecoration(
                labelText: "Produto",
              ),
            ),
            TextField(
              controller: quantidadeController,
              decoration: const InputDecoration(
                labelText: "Quantidade",
              ),
            ),
            TextField(
              controller: precoController,
              decoration: const InputDecoration(
                labelText: "Preço",
              ),
            ),
            DropdownButton(
              value: formaPagamento,
              items: const [
                DropdownMenuItem(
                  value: aVista,
                  child: Text("à Vista(5% Desconto)"),
                ),
                DropdownMenuItem(
                  value: aPrazo,
                  child: Text("à Prazo"),
                ),
              ],
              onChanged: (value) => setState(() {
                formaPagamento = value!;
              }),
            ),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () => Calcular(context),
                child: const Text("Calcular"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void Calcular(BuildContext context){
    double quantidade = double.parse(quantidadeController.text);
    final produto = produtoController.text;
    double preco = double.parse(precoController.text);
    double total = 0;

    if (formaPagamento == aVista) {
      total = (quantidade * preco) * 0.95;      
    }else{
      total = quantidade * preco;
    }

    final snackBar = SnackBar(content: Text("$quantidade $produto custará ${fomatter.format(total)}"),);

     ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
// Comando para exportar o conversor de moeda: flutter pub add intl