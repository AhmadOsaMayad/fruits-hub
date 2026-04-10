import 'package:fruit_hub/core/entities/product_entity.dart';

class CartItemEntity {
  final ProductEntity product;

  int count;
  CartItemEntity({required this.product, this.count = 0});

  num totalPrice() {
    return product.price * count;
  }

  num totalWeight() {
    return product.avgUnitWeight * count;
  }

  increaseCount() {
    if (count < product.quantity) {
      count++;
      return true;
    }
    return false;
  }

  decreaseCount() {
    if (count > 1) {
      count--;
      return true;
    }
    return false;
  }
}
