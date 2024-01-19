import 'package:flutter/material.dart';

class NameProductWidget extends StatelessWidget {
  const NameProductWidget({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      textAlign: TextAlign.center,
      style: Theme.of(context)
          .textTheme
          .bodyLarge
          ?.copyWith(fontWeight: FontWeight.w700, height: 1),
    );
  }
}
