import 'package:flutter/material.dart';
import 'package:plural/plural_l.dart';
import 'package:plural/plural_m.dart';
import 'package:plural/plural_r_z.dart';
import 'package:plural/plural_simples.dart';

class HomePage extends StatelessWidget {
  final controller = TextEditingController();

  final regras = {
    PluralM(),
    PluralRZ(),
    PluralL(),
    PluralSimples(),
  };


  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  labelText: "Palavra"
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () => plural(context),
                  child: const Text("Plural!"),
                ),
              ),
            ],
          ),
        ),
        ),
    );
  }

  void plural(BuildContext context){
    final singular = controller.text;
    var resultado = "";
    
    for (var regra in regras) {
      if (regra.aceita(singular)){
        resultado = regra.doPlural(singular);
        break;
      }
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("$singular => $resultado")),
    );
  }
}