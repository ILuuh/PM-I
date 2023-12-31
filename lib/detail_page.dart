import 'package:flutter/material.dart';
import 'package:loja/cart.dart';
import 'package:loja/catalog_view_model.dart';
import 'package:loja/product.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    //Recuperando o id que foi passado quando essa tela foi aberta
    final id = ModalRoute.of(context)?.settings.arguments as String;

    //recuperamos o catalog que esta sob cuidados do Provider
    final catalog = Provider.of<CatalogViewModel>(context);

    //recuperqamos o carrinho que esta sob cuidados do Provider
    final cart = Provider.of<CartViewModel>(context);

    //procuramos, no catalogo, pelo produto cujo id recebemos como parametro
    final product = catalog.products.firstWhere((p) => p.id == id);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalhe do Produto"),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                info("Nome:", product.name),
                info("Preço:", product.salePriceFormatted),
                info("Estoque:", "${product.quantity}"),
              ],
            ),
            manage(cart, product),
          ],
        ),
      )
    );
  }

  Widget info(String label, String content) => Card(
    elevation: 3,
    child: Container(
      margin: const EdgeInsets.all(8),
      child: Row(
        children: [
          SizedBox(
            width: 150,
            child: Text(label),
          ),
          Text(content),
        ],
      ),
    )
  );

  Widget manage(CartViewModel cartVM, Product product) {
    if (cartVM.isIncart(product)) {
      return const Text("libera para mexer na quantidade");
    }

    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: () => cartVM.addToCart(product),
        child: const Text("Adicionar ao Carrinho"),
      ),
    );
  }
}