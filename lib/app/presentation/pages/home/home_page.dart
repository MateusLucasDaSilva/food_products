import 'package:flutter/material.dart';
import 'package:food_products/app/presentation/pages/home/views/options_view.dart';
import 'package:food_products/app/presentation/pages/home/views/products_view.dart';
import 'package:food_products/app/presentation/pages/home/views/search_view.dart';
import 'package:food_products/app/presentation/pages/home/widgets/bottom_navigator_bar_widget.dart';
import 'package:food_products/app/presentation/shared/ui/widgets/app_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomHomeNavigatorBarWidget(pageController: _pageController),
      appBar: const CustomAppBar(leadingIconData: Icons.menu),
      body: PageView(
        controller: _pageController,
        children: const <Widget>[
          ProductsView(),
          SearchView(),
          OptionsView(),
        ],
      ),
    );
  }
}
