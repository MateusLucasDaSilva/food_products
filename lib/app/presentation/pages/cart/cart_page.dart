import 'package:flutter/material.dart';
import 'package:food_products/app/domain/constantes/moke_produtos.dart';
import 'package:food_products/app/domain/entities/product_entity.dart';
import 'package:food_products/app/presentation/pages/cart/widgets/item_cart_product_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Carrinho'), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children:
              <ProductEntity>[...MokeProdutos.frutas, ...MokeProdutos.products]
                  .map(
                    (ProductEntity e) => ItemCartProductWidget(product: e),
                  )
                  .toList(),
        ),
      ),
    );
  }
}
