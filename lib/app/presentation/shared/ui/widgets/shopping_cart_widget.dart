import 'package:flutter/material.dart';
import 'package:food_products/app/presentation/app/app_named_routes.dart';

class ShoppingCartWidget extends StatelessWidget {
  const ShoppingCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _goToCart(context),
      child: Hero(
        tag: 'shopping-car',
        child: Container(
          height: 40,
          width: 50,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(10)),
          alignment: Alignment.center,
          child: const Icon(
            Icons.shopping_cart_outlined,
            size: 25,
          ),
        ),
      ),
    );
  }

  void _goToCart(BuildContext context) {
    Navigator.pushNamed(context, AppNamedRoutes.CART);
  }
}
