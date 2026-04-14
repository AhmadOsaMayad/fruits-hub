import 'package:fruit_hub/core/constants/query_key_words.dart';
import 'package:fruit_hub/features/main/domain/entities/cart_item_entity.dart';

class OrderProductModel {
  final String name;
  final String code;
  final String imageUrl;
  final double price;
  final int quantity;

  OrderProductModel({
    required this.name,
    required this.code,
    required this.imageUrl,
    required this.price,
    required this.quantity,
  });

  factory OrderProductModel.fromEntity({
    required CartItemEntity cartItemEntity,
  }) {
    return OrderProductModel(
      name: cartItemEntity.product.name,
      code: cartItemEntity.product.code,
      imageUrl: cartItemEntity.product.imageUrl!,
      price: cartItemEntity.product.price.toDouble(),
      quantity: cartItemEntity.count,
    );
  }

  toJson() {
    return {
      QKWords.name: name,
      QKWords.code: code,
      QKWords.imageUrl: imageUrl,
      QKWords.price: price,
      QKWords.quantity: quantity,
    };
  }
}
