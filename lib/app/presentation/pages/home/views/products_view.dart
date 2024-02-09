import 'package:flutter/material.dart';
import 'package:food_products/app/domain/constantes/moke_produtos.dart';
import 'package:food_products/app/presentation/pages/home/widgets/list_products_widget.dart';
import 'package:food_products/app/presentation/pages/home/widgets/title_category_widget.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              const TitleCategoryWidget(category: 'Vegetais Frescos'),
              ListProducts(
                  colorCard: Theme.of(context).colorScheme.secondary,
                  products: MokeProdutos.vegetais),
              const SizedBox(
                height: 30,
              ),
              const TitleCategoryWidget(category: 'Frutas Frescas'),
              ListProducts(
                products: MokeProdutos.frutas,
                colorCard: Theme.of(context).colorScheme.tertiary,
              ),
              const SizedBox(
                height: 30,
              ),
              const TitleCategoryWidget(category: 'Produtos da Padaria'),
              ListProducts(
                  colorCard: Theme.of(context).colorScheme.primary,
                  products: MokeProdutos.products)
            ],
          ),
        ),
      ),
    );
  }
}
