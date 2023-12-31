import 'package:flutter/material.dart';
import 'package:loja/catalog_item_widget.dart';
import 'package:loja/catalog_view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<CatalogViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(onPressed: (){}, 
          icon: const Icon(Icons.shopping_cart))
        ],
        ),
        body: ListView.separated(
          itemCount:vm.products.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              "/detail",
              arguments: vm.products[index].id,
              ),
            child: CatalogItemWidget(
              product: vm.products[index],
              ),
          ),
            separatorBuilder: (context, index) => const Divider(),
    ),
    );
  }
}