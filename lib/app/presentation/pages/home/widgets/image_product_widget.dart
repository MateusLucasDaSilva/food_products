import 'package:flutter/material.dart';

class ImageProductWidget extends StatelessWidget {
  final String imageAssetPath;
  const ImageProductWidget({super.key, required this.imageAssetPath});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 100,
        width: 100,
        child: Image.asset(
          imageAssetPath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
