import 'package:flutter/material.dart';
import 'package:food_products/app/domain/constantes/moke_produtos.dart';
import 'package:food_products/app/presentation/pages/home/widgets/list_products_widget.dart';
import 'package:food_products/app/presentation/pages/home/widgets/title_category_widget.dart';
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
        children: <Widget>[
          const ProductsView(),
          Scaffold(
            body: Container(
              color: Colors.deepOrange,
              height: 344,
              width: 100,
            ),
          ),
          Scaffold(
            body: Container(
              color: Colors.deepPurple,
            ),
          ),
        ],
      ),
    );
  }
}

class ProductsView extends StatelessWidget {
  const ProductsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            const TitleCategoryWidget(category: 'Vegetais Frescos'),
            ListProducts(
                colorCard: Theme.of(context).colorScheme.secondary,
                products: MokeProdutos.vegetais),
            const SizedBox(
              height: 30,
            ),
            const TitleCategoryWidget(category: 'Frutas Frescas'),
            ListProducts(
              products: MokeProdutos.frutas,
              colorCard: Theme.of(context).colorScheme.tertiary,
            ),
            const SizedBox(
              height: 30,
            ),
            const TitleCategoryWidget(category: 'Produtos da Padaria'),
            ListProducts(
                colorCard: Theme.of(context).colorScheme.primary,
                products: MokeProdutos.products)
          ],
        ),
      ),
    );
  }
}

class BottomHomeNavigatorBarWidget extends StatefulWidget {
  final PageController pageController;
  const BottomHomeNavigatorBarWidget({
    super.key,
    required this.pageController,
  });

  @override
  State<BottomHomeNavigatorBarWidget> createState() =>
      _BottomHomeNavigatorBarWidgetState();
}

class _BottomHomeNavigatorBarWidgetState
    extends State<BottomHomeNavigatorBarWidget> {
  int index = 0;

  void setHome() {
    setState(() {
      index = 0;
      _goPage(0);
    });
  }

  void _goPage(double index) {
    widget.pageController.animateTo(index,
        duration: const Duration(milliseconds: 200), curve: Curves.linear);
  }

  void setSearch() {
    setState(() {
      index = 1;
      _goPage(1);
    });
  }

  void setShope() {
    setState(() {
      _goPage(2);
      index = 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black, width: .5)),
      child: Stack(
        children: <Widget>[
          AnimatedAlign(
            duration: const Duration(milliseconds: 200),
            curve: Curves.bounceInOut,
            alignment: index == 0
                ? Alignment.centerLeft
                : index == 1
                    ? Alignment.center
                    : Alignment.centerRight,
            child: Container(
              height: 50,
              width: 70,
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Theme.of(context).colorScheme.scrim,
              ),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: setHome,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26),
                    child: Icon(
                      Icons.home,
                      size: 25,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: setSearch,
                  child: const Icon(
                    Icons.search_sharp,
                    size: 25,
                  ),
                ),
                GestureDetector(
                  onTap: setShope,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
