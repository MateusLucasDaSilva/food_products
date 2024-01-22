import 'package:flutter/material.dart';
import 'package:food_products/app/domain/entities/product_entity.dart';
import 'package:food_products/app/presentation/pages/home/widgets/image_product_widget.dart';
import 'package:food_products/app/presentation/pages/home/widgets/name_product_widget.dart';
import 'package:food_products/app/presentation/pages/home/widgets/price_widget.dart';
import 'package:food_products/app/presentation/pages/home/widgets/price_with_discount_widget.dart';
import 'package:food_products/app/presentation/shared/ui/widgets/icon_button_widget.dart';

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
    return Container(
      height: 160,
      width: 100,
      child: Stack(
        fit: StackFit.loose,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
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
                          const IconButtonWidget(
                            icon: Icon(
                              Icons.add_outlined,
                              size: 15,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ImageProductWidget(imageAssetPath: product.image, size: 90),
          )
        ],
      ),
    );
  }
}
