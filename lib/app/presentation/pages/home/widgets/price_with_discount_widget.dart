import 'package:flutter/material.dart';

class PriceWithDiscountWidget extends StatelessWidget {
  final double fontSize;
  const PriceWithDiscountWidget({
    super.key,
    required this.priceWithDiscount,
    this.fontSize = 10,
  });

  final String priceWithDiscount;

  @override
  Widget build(BuildContext context) {
    return Text(
      priceWithDiscount,
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
            fontWeight: FontWeight.w700,
            color: Colors.grey,
            fontSize: fontSize,
            decoration: TextDecoration.lineThrough,
          ),
    );
  }
}
