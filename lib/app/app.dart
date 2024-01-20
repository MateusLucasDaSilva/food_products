import 'package:flutter/material.dart';
import 'package:food_products/app/presentation/app/app_routes.dart';
import 'package:food_products/app/presentation/app/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theme,
        routes: AppRoutes.routes,
        initialRoute: AppRoutes.initialRouter,
        onGenerateRoute: AppRoutes.onGenerateRoute);
  }
}
