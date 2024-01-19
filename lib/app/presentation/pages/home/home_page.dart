import 'package:flutter/material.dart';
import 'package:food_products/app/domain/constantes/moke_produtos.dart';
import 'package:food_products/app/presentation/pages/home/widgets/list_produts_widget.dart';
import 'package:food_products/app/presentation/pages/home/widgets/title_category_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomHomeNavigatorBarWidget(),
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          size: 25,
        ),
        actions: <Widget>[
          Container(
            height: 30,
            width: 50,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(20)),
            alignment: Alignment.center,
            child: const Icon(
              Icons.shopping_cart_outlined,
              size: 25,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              const TitleCategoryWidget(category: 'Vegetais Frescos'),
              ListProducts(
                  colorCard: Theme.of(context).colorScheme.secondaryContainer,
                  products: MokeProdutos.vegetais),
              const SizedBox(
                height: 30,
              ),
              const TitleCategoryWidget(category: 'Frutas Frescas'),
              ListProducts(
                products: MokeProdutos.frutas,
                colorCard: Theme.of(context).colorScheme.tertiaryContainer,
              ),
              const SizedBox(
                height: 30,
              ),
              const TitleCategoryWidget(category: 'Produtos da Padaria'),
              ListProducts(
                  colorCard: Theme.of(context).colorScheme.primaryContainer,
                  products: MokeProdutos.products)
            ],
          ),
        ),
      ),
    );
  }
}

class BottomHomeNavigatorBarWidget extends StatefulWidget {
  const BottomHomeNavigatorBarWidget({
    super.key,
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
    });
  }

  void setSearch() {
    setState(() {
      index = 1;
    });
  }

  void setShope() {
    setState(() {
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
