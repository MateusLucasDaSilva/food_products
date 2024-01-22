import 'package:flutter/material.dart';

class ImageProductWidget extends StatelessWidget {
  final String imageAssetPath;
  final double size;
  const ImageProductWidget(
      {super.key, required this.imageAssetPath, this.size = 100});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      alignment: Alignment.center,
      child: Image.asset(
        imageAssetPath,
        fit: BoxFit.contain,
      ),
    );
  }
}
