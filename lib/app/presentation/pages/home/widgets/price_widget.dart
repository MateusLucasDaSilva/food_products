import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  final TextStyle? textStyle;
  final String price;
  const PriceWidget({
    super.key,
    required this.price,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      price,
      style: textStyle ??
          Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
    );
  }
}
