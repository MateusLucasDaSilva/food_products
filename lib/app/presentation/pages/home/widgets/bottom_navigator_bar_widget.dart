import 'package:flutter/material.dart';

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

  void _goPage(int index) {
    widget.pageController.jumpToPage(
      index,
    );
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
