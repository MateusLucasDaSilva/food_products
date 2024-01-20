import 'package:flutter/material.dart';
import 'package:food_products/app/domain/entities/product_entity.dart';
import 'package:food_products/app/presentation/pages/home/widgets/button_add_product_widget.dart';
import 'package:food_products/app/presentation/pages/home/widgets/image_product_widget.dart';
import 'package:food_products/app/presentation/pages/home/widgets/name_product_widget.dart';
import 'package:food_products/app/presentation/pages/home/widgets/price_widget.dart';
import 'package:food_products/app/presentation/pages/home/widgets/price_with_discount_widget.dart';

class CardProductWidget extends StatelessWidget {
  final ProductEntity product;
  final Color colorCard;
  const CardProductWidget({
    super.key,
    required this.product,
    required this.colorCard,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 160,
          width: 100,
          child: Column(
            children: <Widget>[
              const Spacer(),
              Hero(
                tag: '${product.image}color',
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: colorCard,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      const Spacer(),
                      NameProductWidget(name: product.name),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                PriceWithDiscountWidget(
                                    priceWithDiscount:
                                        product.toStringPriceWithDiscount),
                                PriceWidget(price: product.toStringPrice),
                              ],
                            ),
                            const ButtonAddProduct()
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 0,
          child: ImageProductWidget(imageAssetPath: product.image),
        )
      ],
    );
  }
}
