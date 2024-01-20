import 'package:flutter/material.dart';

class ImageProductWidget extends StatelessWidget {
  final String imageAssetPath;
  final double size;
  const ImageProductWidget(
      {super.key, required this.imageAssetPath, this.size = 100});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: size,
        width: size,
        child: Image.asset(
          imageAssetPath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
