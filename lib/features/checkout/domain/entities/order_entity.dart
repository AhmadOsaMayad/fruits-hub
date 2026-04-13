import 'package:fruit_hub/features/checkout/domain/entities/shipping_address_entity.dart';
import 'package:fruit_hub/features/main/domain/entities/cart_entity.dart';

class OrderEntity {
  final CartEntity cartEntity;
  bool? payWithCash;
  ShippingAddressEntity shippingAddress = ShippingAddressEntity();

  OrderEntity({
    required this.cartEntity,
    this.payWithCash,
    // this.shippingAddress,
  });
}
