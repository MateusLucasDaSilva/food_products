// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:food_products/app/domain/entities/product_entity.dart';
import 'package:food_products/app/presentation/pages/details_product/details_product_page.dart';
import 'package:food_products/app/presentation/pages/home/widgets/card_product_widget.dart';

class ListProducts extends StatelessWidget {
  final List<ProductEntity> products;
  final Color colorCard;
  const ListProducts({
    super.key,
    required this.products,
    required this.colorCard,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: products
            .map(
              (ProductEntity product) => GestureDetector(
                onTap: () => _goToProduct(context, product),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CardProductWidget(product: product, colorCard: colorCard),
                      const SizedBox(
                        width: 20,
                      ),
                    ]),
              ),
            )
            .toList(),
      ),
    );
  }

  void _goToProduct(
    BuildContext context,
    ProductEntity product,
  ) {
    Navigator.of(context).push(
      PageRouteBuilder<dynamic>(
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return DetailsProductPage(
              product: product,
              colorCard: colorCard,
            );
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            const Offset begin = Offset(0.0, 1.0);
            const Offset end = Offset(0.0, 0.0);
            const Curve curve = Curves.easeInOut;

            final Animatable<Offset> tween =
                Tween(begin: begin, end: end).chain(
              CurveTween(curve: curve),
            );

            final Animation<Offset> offsetAnimation = animation.drive(tween);

            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
          fullscreenDialog: true,
          transitionDuration: const Duration(milliseconds: 300)),
    );
  }
}
