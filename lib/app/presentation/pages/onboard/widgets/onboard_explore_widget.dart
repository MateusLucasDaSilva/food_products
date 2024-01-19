import 'package:flutter/material.dart';
import 'package:food_products/app/presentation/app/app_images_paths.dart';

class OnboardExploreWidget extends StatelessWidget {
  final Function() onTap;
  const OnboardExploreWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 300,
          width: double.infinity,
          child: Image.asset(
            AppImagesPaths.onboardTwo,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          'Entrega de mantimentos em\nmenos de 15 minutos',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Explore e peça seus itens de\nmercearia favoritos',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w400,
              ),
        ),
        const SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 200,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).colorScheme.scrim,
            ),
            alignment: Alignment.center,
            child: Text(
              'Explorar',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        )
      ],
    );
  }
}
