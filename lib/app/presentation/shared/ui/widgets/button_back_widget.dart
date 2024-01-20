import 'package:flutter/material.dart';

class ButtonBackWidget extends StatelessWidget {
  final IconData leadingIconData;
  const ButtonBackWidget(
      {super.key, this.leadingIconData = Icons.arrow_back_ios_new});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Hero(
        tag: 'back-button',
        child: Container(
          height: 40,
          width: 50,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(10)),
          alignment: Alignment.center,
          child: Icon(
            leadingIconData,
            size: 25,
          ),
        ),
      ),
    );
  }
}
