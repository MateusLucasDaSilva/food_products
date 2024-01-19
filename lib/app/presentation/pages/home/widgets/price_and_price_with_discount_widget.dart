import 'package:flutter/material.dart';

class PriceAndPriceWithDiscountWidget extends StatelessWidget {
  final String price;
  final String priceWithDiscount;

  const PriceAndPriceWithDiscountWidget(
      {super.key, required this.price, required this.priceWithDiscount});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          priceWithDiscount,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: Colors.grey,
                fontSize: 10,
                decoration: TextDecoration.lineThrough,
              ),
        ),
        Text(
          price,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.w700, fontSize: 12),
        ),
      ],
    );
  }
}
