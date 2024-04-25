import 'package:flutter/material.dart';
import 'package:food_products/app/domain/constantes/moke_produtos.dart';
import 'package:food_products/app/domain/entities/app/app_contantes.dart';
import 'package:food_products/app/domain/entities/product_entity.dart';
import 'package:food_products/app/presentation/shared/ui/widgets/inputs/input_app_widget.dart';
import 'package:food_products/app/presentation/shared/ui/widgets/products/tile_product_widget.dart';

class SearchView extends StatelessWidget {
  const SearchView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(
          AppContantes.padding,
        ),
        child: Column(children: <Widget>[
          const InputAppWidget(
            label: 'Pesquisar..',
          ),
          const SizedBox(
            height: AppContantes.padding,
          ),
          ...<ProductEntity>[...MokeProdutos.frutas, ...MokeProdutos.products]
              .map(
                (ProductEntity e) => Padding(
                  padding: const EdgeInsets.only(bottom: AppContantes.padding),
                  child: TileProductWidget(product: e),
                ),
              )
              .toList(),
        ]),
      ),
    );
  }
}

class ItemProductSearchWidget extends StatelessWidget {
  const ItemProductSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppContantes.padding / 2),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppContantes.borderRadius,
          ),
          border: Border.all(width: 1.0),
        ),
      ),
    );
  }
}
