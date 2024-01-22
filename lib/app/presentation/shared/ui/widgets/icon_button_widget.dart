import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final double size;
  final Icon icon;

  const IconButtonWidget({
    super.key,
    this.size = 20,
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
        color: Colors.white,
      ),
      child: icon,
    );
  }
}
