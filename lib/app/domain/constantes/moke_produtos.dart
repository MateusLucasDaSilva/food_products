import 'package:food_products/app/domain/entities/product_entity.dart';
import 'package:food_products/app/presentation/app/app_images_paths.dart';

class MokeProdutos {
  MokeProdutos._();

  static final List<ProductEntity> products = <ProductEntity>[
    ProductEntity(
        image: AppImagesPaths.bolo, name: 'Bolo recheado', price: 15.89),
    ProductEntity(image: AppImagesPaths.ovo, name: 'Ovo', price: 13.89),
    ProductEntity(image: AppImagesPaths.farinha, name: 'Farinha', price: 13.89),
    ProductEntity(image: AppImagesPaths.pao, name: 'Pão', price: 8.89),
  ];
  static final List<ProductEntity> frutas = <ProductEntity>[
    ProductEntity(
        image: AppImagesPaths.melancia, name: 'melancia', price: 8.89),
    ProductEntity(image: AppImagesPaths.banana, name: 'Banana', price: 15.89),
    ProductEntity(image: AppImagesPaths.uva, name: 'Uva', price: 13.89),
    ProductEntity(image: AppImagesPaths.laranja, name: 'Laranja', price: 13.89),
    ProductEntity(image: AppImagesPaths.maca, name: 'Maca', price: 8.89),
    ProductEntity(image: AppImagesPaths.melon, name: 'Melão', price: 8.89),
  ];

  static final List<ProductEntity> vegetais = <ProductEntity>[
    ProductEntity(image: AppImagesPaths.cebola, name: 'Cebola', price: 12),
    ProductEntity(image: AppImagesPaths.couve, name: 'Couve', price: 19),
    ProductEntity(
        image: AppImagesPaths.berinjela, name: 'Berinjela', price: 27),
    ProductEntity(image: AppImagesPaths.melancia, name: 'Melancia', price: 9),
  ];
}
