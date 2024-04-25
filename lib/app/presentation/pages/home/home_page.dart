import 'package:flutter/material.dart';
import 'package:food_products/app/presentation/pages/home/views/options_view.dart';
import 'package:food_products/app/presentation/pages/home/views/products_view.dart';
import 'package:food_products/app/presentation/pages/home/views/search_view.dart';
import 'package:food_products/app/presentation/pages/home/widgets/bottom_navigator_bar_widget.dart';
import 'package:food_products/app/presentation/shared/ui/widgets/app_bar_widget.dart';
import 'package:food_products/app/presentation/shared/ui/widgets/background_unfocus/background_un_focus.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  String title = 'Produtos';

  @override
  void initState() {
    super.initState();
    _listenPages();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _listenPages() {
    WidgetsBinding.instance.addPostFrameCallback((Duration timeStamp) {
      _pageController.addListener(() {
        if (mounted) {
          setState(() {
            title = _buildTitle();
          });
        }
      });
    });
  }

  String _buildTitle() {
    switch (_pageController.page) {
      case 0:
        return 'Produtos';
      case 1:
        return 'Pesquisa';
      case 2:
        return 'Compras';
      default:
        return title;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomHomeNavigatorBarWidget(pageController: _pageController),
      appBar: CustomAppBar(
        leadingIconData: Icons.menu,
        titleText: title,
      ),
      body: BackgroundUnFocus(
        child: PageView(
          controller: _pageController,
          children: const <Widget>[
            ProductsView(),
            SearchView(),
            OptionsView(),
          ],
        ),
      ),
    );
  }
}
