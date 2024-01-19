import 'package:flutter/material.dart';
import 'package:food_products/app/presentation/app/app_images_paths.dart';

class OnboardWellComeWidget extends StatelessWidget {
  final Function() onTap;
  const OnboardWellComeWidget({
    super.key,
    required this.onTap,
  });

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
            AppImagesPaths.onboardOne,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          'Encomende suas compras \npelo seu telefone',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Agora você pode obter itens de mercearia\nà sua porta',
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
            height: 60,
            width: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(500),
            ),
            child: Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.scrim,
                borderRadius: BorderRadius.circular(500),
                border: Border.all(
                  color: Colors.white,
                  width: 1.5,
                ),
              ),
              alignment: Alignment.center,
              child: const Icon(Icons.arrow_forward),
            ),
          ),
        )
      ],
    );
  }
}
