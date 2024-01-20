import 'package:flutter/material.dart';

class ImageProductWidget extends StatelessWidget {
  final String imageAssetPath;
  final double size;
  const ImageProductWidget(
      {super.key, required this.imageAssetPath, this.size = 100});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: imageAssetPath,
      child: Center(
        child: Container(
          height: size,
          width: size,
          child: Image.asset(
            imageAssetPath,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
