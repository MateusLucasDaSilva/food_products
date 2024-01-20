import 'package:flutter/material.dart';
import 'package:food_products/app/domain/entities/product_entity.dart';
import 'package:food_products/app/presentation/pages/home/widgets/image_product_widget.dart';
import 'package:food_products/app/presentation/shared/ui/widgets/app_bar_widget.dart';

class DetailsProductPage extends StatelessWidget {
  final ProductEntity product;
  final Color colorCard;

  const DetailsProductPage({
    super.key,
    required this.product,
    required this.colorCard,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(leadingIconData: Icons.close),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200,
              child: Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Spacer(),
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: colorCard,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )
                    ],
                  ),
                  ImageProductWidget(
                    imageAssetPath: product.image,
                    size: 200,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
