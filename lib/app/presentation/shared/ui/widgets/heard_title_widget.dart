import 'package:flutter/material.dart';

class HeardTitleWidget extends StatelessWidget {
  final String title;
  const HeardTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
          ),
    );
  }
}
