import 'package:flutter/material.dart';
import 'package:food_products/app/domain/entities/product_entity.dart';
import 'package:food_products/app/presentation/pages/details_product/widgets/card_product_details_widget.dart';
import 'package:food_products/app/presentation/pages/details_product/widgets/drop_down_menu_widget.dart';
import 'package:food_products/app/presentation/pages/home/widgets/card_product_widget.dart';
import 'package:food_products/app/presentation/pages/home/widgets/image_product_widget.dart';
import 'package:food_products/app/presentation/shared/ui/extensions/build_context_extension.dart';
import 'package:food_products/app/presentation/shared/ui/widgets/app_bar_widget.dart';
import 'package:food_products/app/presentation/shared/ui/widgets/heard_title_widget.dart';

class DetailsProductPage extends StatefulWidget {
  final List<ProductEntity> products;
  final ProductEntity product;
  final Color colorCard;

  const DetailsProductPage({
    super.key,
    required this.products,
    required this.colorCard,
    required this.product,
  });

  @override
  State<DetailsProductPage> createState() => _DetailsProductPageState();
}

class _DetailsProductPageState extends State<DetailsProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(leadingIconData: Icons.close),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  CardProductDetailsWidget(
                      product: widget.product, colorCard: widget.colorCard),
                  Align(
                    alignment: Alignment.topCenter,
                    child: ImageProductWidget(
                      imageAssetPath: widget.product.image,
                      size: 150,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const HeardTitleWidget(title: 'Descrição do produtos'),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Apresentamos ${widget.product.name}, um item essencial e versátil que eleva sua experiência culinária a novos patamares. Este produto de alta qualidade, cuidadosamente selecionado, é a escolha',
                style: context.textTheme.bodyMedium
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              const HeardTitleWidget(title: 'Detalhes'),
              const SizedBox(
                height: 10,
              ),
              const DropdownMenuWidget(
                label: 'Avaliações',
              ),
              const SizedBox(
                height: 10,
              ),
              const DropdownMenuWidget(
                label: 'Perfil energético',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: widget.products
                      .map((ProductEntity e) => Row(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () => _goToOtherProductDetail(e),
                                child: CardProductWidget(
                                    product: e, colorCard: widget.colorCard),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                            ],
                          ))
                      .toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _goToOtherProductDetail(ProductEntity productArg) {
    Navigator.of(context).push(
      PageRouteBuilder<dynamic>(
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return DetailsProductPage(
              product: productArg,
              products: const <ProductEntity>[],
              colorCard: widget.colorCard,
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

enum ColorLabel {
  blue('Blue', Colors.blue),
  pink('Pink', Colors.pink),
  green('Green', Colors.green),
  yellow('Orange', Colors.orange),
  grey('Grey', Colors.grey);

  const ColorLabel(this.label, this.color);
  final String label;
  final Color color;
}
