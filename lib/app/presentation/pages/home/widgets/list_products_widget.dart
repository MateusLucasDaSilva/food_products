// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:food_products/app/domain/entities/product_entity.dart';
import 'package:food_products/app/presentation/pages/details_product/details_product_page.dart';
import 'package:food_products/app/presentation/pages/home/widgets/card_product_widget.dart';

class ListProducts extends StatelessWidget {
  final List<ProductEntity> products;
  final Color colorCard;
  const ListProducts({
    super.key,
    required this.products,
    required this.colorCard,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: products
            .map(
              (ProductEntity product) => GestureDetector(
                onTap: () => _goToProduct(context, product),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CardProductWidget(product: product, colorCard: colorCard),
                      const SizedBox(
                        width: 20,
                      ),
                    ]),
              ),
            )
            .toList(),
      ),
    );
  }

  void _goToProduct(
    BuildContext context,
    ProductEntity product,
  ) {
    final List<ProductEntity> listProducts = <ProductEntity>[...products];
    listProducts.remove(product);

    Navigator.of(context).push(
      MaterialPageRoute<dynamic>(
        fullscreenDialog: true,
        builder: (BuildContext context) => DetailsProductPage(
          product: product,
          products: listProducts,
          colorCard: colorCard,
        ),
      ),
    );
  }
}
