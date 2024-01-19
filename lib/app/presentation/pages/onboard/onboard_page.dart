import 'package:flutter/material.dart';
import 'package:food_products/app/presentation/app/app_named_routes.dart';
import 'package:food_products/app/presentation/pages/onboard/widgets/onboard_explore_widget.dart';
import 'package:food_products/app/presentation/pages/onboard/widgets/onboard_well_come_widget.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }

  void _goHomePage() {
    Navigator.pushNamed(context, AppNamedRoutes.HOME);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          OnboardWellComeWidget(onTap: _nextPage),
          OnboardExploreWidget(onTap: _goHomePage),
        ],
      ),
    );
  }
}
