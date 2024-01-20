import 'package:flutter/material.dart';
import 'package:food_products/app/presentation/shared/ui/widgets/button_back_widget.dart';
import 'package:food_products/app/presentation/shared/ui/widgets/shopping_cart_widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;
  final IconData leadingIconData;
  final Widget? trailing;

  const CustomAppBar(
      {this.titleText = '',
      this.leadingIconData = Icons.arrow_back_ios_new,
      this.trailing});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).padding.top + 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ButtonBackWidget(leadingIconData: leadingIconData),
            ),
            Text(
              titleText,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: trailing ?? const ShoppingCartWidget(),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
