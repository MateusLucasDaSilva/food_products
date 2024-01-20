import 'package:flutter/material.dart';

class NameProductWidget extends StatelessWidget {
  const NameProductWidget({
    super.key,
    required this.name,
    this.fontSize = 14,
  });

  final String name;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.w700, height: 1, fontSize: fontSize),
    );
  }
}
