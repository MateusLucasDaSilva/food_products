// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:food_products/app/presentation/app/app_images_paths.dart';

class ProductEntity {
  final String image;
  final String name;
  final double price;
  ProductEntity({
    this.image = AppImagesPaths.melancia,
    this.name = 'Couve',
    this.price = 16,
  });

  String get toStringPrice {
    return '\$${price.toStringAsFixed(2)}';
  }

  String get toStringPriceWithDiscount {
    return '\$${(price - 5).toStringAsFixed(2)}';
  }

  factory ProductEntity.empty() => ProductEntity(
        image: AppImagesPaths.banana,
        name: 'Erro',
        price: 00,
      );
}
