import 'package:flutter/material.dart';
import 'package:food_products/app/domain/entities/product_entity.dart';
import 'package:injectable/injectable.dart';

@singleton
class CartServices extends ChangeNotifier {
  final ValueNotifier<List<ProductEntity>> products =
      ValueNotifier<List<ProductEntity>>(<ProductEntity>[]);

  void add(ProductEntity product) {
    products.value.add(product);
  }

  void remove(ProductEntity product) {
    products.value.remove(product);
  }
}
