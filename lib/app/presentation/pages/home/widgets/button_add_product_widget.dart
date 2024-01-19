import 'package:flutter/material.dart';

class ButtonAddProduct extends StatelessWidget {
  const ButtonAddProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(500),
        color: Colors.white,
      ),
      child: const Icon(
        Icons.add_outlined,
        size: 15,
      ),
    );
  }
}
