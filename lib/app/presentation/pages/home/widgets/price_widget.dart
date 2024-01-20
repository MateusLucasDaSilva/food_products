import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    super.key,
    required this.price,
    this.fontSize = 12,
  });

  final String price;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      price,
      style: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(fontWeight: FontWeight.w700, fontSize: fontSize),
    );
  }
}
