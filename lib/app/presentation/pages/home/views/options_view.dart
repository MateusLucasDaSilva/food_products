import 'package:flutter/material.dart';
import 'package:food_products/app/domain/entities/app/app_contantes.dart';
import 'package:food_products/app/presentation/app/app_images_paths.dart';
import 'package:food_products/app/presentation/shared/ui/extensions/build_context_extension.dart';

class OptionsView extends StatelessWidget {
  const OptionsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppContantes.padding),
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              width: double.infinity,
              padding: const EdgeInsets.all(AppContantes.padding),
              decoration: BoxDecoration(
                color: context.colorScheme.scrim,
                borderRadius: BorderRadius.circular(
                  AppContantes.borderRadius,
                ),
              ),
              child: Row(
                children: <Widget>[
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Pacotes Mensais'),
                      ],
                    ),
                  ),
                  Image.asset(
                    AppImagesPaths.cesta,
                    height: 120,
                    width: 120,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
