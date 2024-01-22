import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_products/app/domain/entities/product_entity.dart';
import 'package:food_products/app/presentation/pages/home/widgets/name_product_widget.dart';
import 'package:food_products/app/presentation/pages/home/widgets/price_widget.dart';
import 'package:food_products/app/presentation/pages/home/widgets/price_with_discount_widget.dart';
import 'package:food_products/app/presentation/shared/ui/widgets/icon_button_widget.dart';

class CardProductDetailsWidget extends StatelessWidget {
  const CardProductDetailsWidget({
    super.key,
    required this.product,
    required this.colorCard,
  });

  final ProductEntity product;
  final Color colorCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(
              color: colorCard,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                NameProductWidget(
                  name: product.name,
                  fontSize: 28,
                ),
                SizedBox(
                  child: RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    itemSize: 25,
                    maxRating: 5,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, _) => const Icon(
                      Icons.star,
                      size: 10,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (double rating) {
                      print(rating);
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: <Widget>[
                      PriceWithDiscountWidget(
                        priceWithDiscount: product.toStringPriceWithDiscount,
                        textStyle:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      PriceWidget(
                        price: product.toStringPrice,
                        textStyle:
                            Theme.of(context).textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                      ),
                      const Spacer(),
                      const IconButtonWidget(
                        size: 25,
                        icon: Icon(
                          Icons.remove,
                          size: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '2Kg',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const IconButtonWidget(
                        size: 25,
                        icon: Icon(
                          Icons.add_outlined,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
