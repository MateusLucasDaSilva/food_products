import 'package:flutter/material.dart';

class PriceWithDiscountWidget extends StatelessWidget {
  final TextStyle? textStyle;
  final String priceWithDiscount;
  const PriceWithDiscountWidget({
    super.key,
    required this.priceWithDiscount,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      priceWithDiscount,
      style: textStyle ??
          Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w700,
                color: Colors.grey,
                fontSize: 10,
                decoration: TextDecoration.lineThrough,
              ),
    );
  }
}
