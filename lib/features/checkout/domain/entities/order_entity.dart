import 'package:fruit_hub/features/checkout/domain/entities/shipping_address_entity.dart';
import 'package:fruit_hub/features/main/domain/entities/cart_entity.dart';

class OrderEntity {
  final String uID;
  final CartEntity cartEntity;
  bool? payWithCash;
  ShippingAddressEntity shippingAddress = ShippingAddressEntity();

  OrderEntity({
    required this.uID,
    required this.cartEntity,
    this.payWithCash,
    // this.shippingAddress,
  });
double calculateShippingCost() {
    if (payWithCash!) {
      return 30;
    } else {
      return 0;
    }
  }

  double calcualteShippingDiscount() {
    return 0;
  }

  double calculateTotalPriceAfterDiscountAndShipping() {
    return cartEntity.totalPrice() +
        calculateShippingCost() -
        calcualteShippingDiscount();
  }

  @override
  String toString() {
    return 'OrderEntity{uID: $uID, cartEntity: $cartEntity, payWithCash: $payWithCash, shippingAddressEntity: $shippingAddress}';
  }
  // @override
  // String toString() {

  //   // return '${shippingAddress.fullName},${shippingAddress.email},${shippingAddress.phone},${shippingAddress.address},${shippingAddress.country},${shippingAddress.city},${shippingAddress.address},${shippingAddress.aptSuite}';
  // }
}
