import 'package:fruit_hub/core/constants/query_key_words.dart';
import 'package:fruit_hub/core/helpers/get_currency.dart';
import 'package:fruit_hub/features/main/domain/entities/cart_item_entity.dart';

class ItemEntity {
  String? name;
  int? quantity;
  String? price;
  String? currency;

  ItemEntity({this.name, this.quantity, this.price, this.currency});

  Map<String, dynamic> toJson() => {
    QKWords.name: name,
    QKWords.quantity: quantity,
    QKWords.price: price,
    QKWords.currency: currency,
  };

  factory ItemEntity.fromEntity(CartItemEntity itemEntity) {
    return ItemEntity(
      name: itemEntity.product.name,
      quantity: itemEntity.count,
      price: itemEntity.product.price.toString(),
      currency: getCurrency(),
    );
  }
}
