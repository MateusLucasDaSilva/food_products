import 'package:flutter/material.dart';
import 'package:food_products/app/domain/constantes/moke_produtos.dart';
import 'package:food_products/app/domain/entities/app/app_contantes.dart';
import 'package:food_products/app/domain/entities/product_entity.dart';
import 'package:food_products/app/presentation/shared/ui/widgets/products/tile_product_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Carrinho'), centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppContantes.padding),
          child: Column(
            children: <ProductEntity>[
              ...MokeProdutos.frutas,
              ...MokeProdutos.products
            ]
                .map(
                  (ProductEntity e) => Padding(
                    padding:
                        const EdgeInsets.only(bottom: AppContantes.padding),
                    child: TileProductWidget(product: e),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
