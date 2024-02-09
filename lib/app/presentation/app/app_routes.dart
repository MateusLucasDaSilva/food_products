import 'package:flutter/material.dart';
import 'package:food_products/app/presentation/app/app_named_routes.dart';
import 'package:food_products/app/presentation/pages/cart/cart_page.dart';
import 'package:food_products/app/presentation/pages/home/home_page.dart';
import 'package:food_products/app/presentation/pages/onboard/onboard_page.dart';

class AppRoutes {
  AppRoutes._();

  static const String initialRouter = AppNamedRoutes.INITIAL;

  static Map<String, Widget Function(BuildContext)> routes =
      <String, Widget Function(BuildContext p1)>{
    AppNamedRoutes.INITIAL: (_) => const OnboardPage(),
    AppNamedRoutes.HOME: (_) => const HomePage(),
    AppNamedRoutes.CART: (_) => const CartPage()
  };

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return null;
  }
}
