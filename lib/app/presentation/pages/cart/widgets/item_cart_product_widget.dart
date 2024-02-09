import 'package:flutter/material.dart';
import 'package:food_products/app/domain/entities/product_entity.dart';
import 'package:food_products/app/presentation/shared/ui/extensions/build_context_extension.dart';
import 'package:food_products/app/presentation/shared/ui/widgets/icon_button_widget.dart';

class ItemCartProductWidget extends StatelessWidget {
  final ProductEntity product;
  const ItemCartProductWidget({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(13),
        ),
        child: Row(
          children: <Widget>[
            LeadingCardWidget(product: product),
            const SizedBox(
              width: 10,
            ),
            InfoProductWidget(product: product),
            const Spacer(),
            const TrailingCardWidget(),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class InfoProductWidget extends StatelessWidget {
  const InfoProductWidget({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          product.name,
          style: context.textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          product.toStringPrice,
          style: context.textTheme.bodySmall?.copyWith(),
        ),
      ],
    );
  }
}

class LeadingCardWidget extends StatelessWidget {
  const LeadingCardWidget({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        height: 50,
        width: 50,
        child: Image.asset(product.image),
      ),
    );
  }
}

class TrailingCardWidget extends StatelessWidget {
  const TrailingCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.delete_outline_outlined,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Voce salvou',
          style: context.textTheme.bodySmall?.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        ),
        Row(
          children: <Widget>[
            IconButtonWidget(
              icon: const Icon(
                Icons.remove_outlined,
                size: 20,
              ),
              color: context.primaryColor,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              '1Kg',
              style: context.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            IconButtonWidget(
              icon: const Icon(
                Icons.add_outlined,
                size: 20,
              ),
              color: context.primaryColor,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
