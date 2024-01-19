import 'package:flutter/material.dart';
import 'package:food_products/app/domain/entities/product_entity.dart';
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
              (ProductEntity product) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CardProductWidget(product: product, colorCard: colorCard),
                    const SizedBox(
                      width: 20,
                    ),
                  ]),
            )
            .toList(),
      ),
    );
  }
}
