import 'package:fruit_hub/core/constants/query_key_words.dart';
import 'package:fruit_hub/features/checkout/domain/entities/order_entity.dart';

class DetailsEntity {
  String? subtotal;
  String? shipping;
  double? shippingDiscount;

  DetailsEntity({this.subtotal, this.shipping, this.shippingDiscount});

  Map<String, dynamic> toJson() => {
    QKWords.subtotal: subtotal,
    QKWords.shipping: shipping,
    QKWords.shippingDiscount: shippingDiscount,
  };

  factory DetailsEntity.fromEntity(OrderEntity entity) => DetailsEntity(
    subtotal: entity.cartEntity.totalPrice().toString(),
    shipping: entity.calculateShippingCost().toString(),
    shippingDiscount: entity.calcualteShippingDiscount(),
  );
}
