import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final double size;
  final Icon icon;
  final Color color;

  const IconButtonWidget({
    super.key,
    this.size = 20,
    this.color = Colors.white,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(500),
        color: color,
      ),
      child: icon,
    );
  }
}
