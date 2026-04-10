import 'package:fruit_hub/core/entities/product_entity.dart';
import 'package:fruit_hub/features/main/domain/entities/cart_item_entity.dart';

class CartEntity {
  final List<CartItemEntity> cartItems;
  CartEntity({required this.cartItems});

  addCartItem(CartItemEntity cartItem) {
    cartItems.add(cartItem);
  }

  removeCartItem(CartItemEntity cartItem) {
    cartItems.remove(cartItem);
  }

  bool isExist(ProductEntity product) {
    return cartItems.any((item) => item.product.code == product.code);
  }

  CartItemEntity getCartItem(ProductEntity product) {
    return cartItems.firstWhere(
      (item) => item.product.code == product.code,
      orElse: () => CartItemEntity(product: product, count: 1),
    );
  }

  num totalPrice() {
    num total = 0;
    for (var item in cartItems) {
      total += item.totalPrice();
    }
    return total;
  }
}
