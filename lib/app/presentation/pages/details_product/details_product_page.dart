import 'package:flutter/material.dart';
import 'package:food_products/app/domain/entities/product_entity.dart';
import 'package:food_products/app/presentation/pages/home/widgets/button_add_product_widget.dart';
import 'package:food_products/app/presentation/pages/home/widgets/image_product_widget.dart';
import 'package:food_products/app/presentation/pages/home/widgets/name_product_widget.dart';
import 'package:food_products/app/presentation/pages/home/widgets/price_widget.dart';
import 'package:food_products/app/presentation/pages/home/widgets/price_with_discount_widget.dart';
import 'package:food_products/app/presentation/shared/ui/widgets/app_bar_widget.dart';

class DetailsProductPage extends StatelessWidget {
  final ProductEntity product;
  final Color colorCard;

  const DetailsProductPage({
    super.key,
    required this.product,
    required this.colorCard,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(leadingIconData: Icons.close),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                SizedBox(
                  height: 250,
                  child: Column(
                    children: <Widget>[
                      const Spacer(),
                      Hero(
                        tag: '${product.image}color',
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            color: colorCard,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Spacer(),
                              NameProductWidget(
                                name: product.name,
                                fontSize: 28,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Row(
                                  children: <Widget>[
                                    PriceWithDiscountWidget(
                                        priceWithDiscount:
                                            product.toStringPriceWithDiscount,
                                        fontSize: 14),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: PriceWidget(
                                        price: product.toStringPrice,
                                        fontSize: 18,
                                      ),
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
                ImageProductWidget(
                  imageAssetPath: product.image,
                  size: 200,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
