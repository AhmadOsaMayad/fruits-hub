import 'package:fruit_hub/core/entities/product_entity.dart';
import 'package:fruit_hub/features/main/domain/entities/cart_item_entity.dart';

class CartEntity {
  final List<CartItemEntity> cartItems;
  CartEntity({required this.cartItems});

  addCartItem(CartItemEntity cartItem) {
    cartItems.add(cartItem);
  }

  bool isExist(ProductEntity product) {
    return cartItems.any((item) => item.product == product);
  }

  CartItemEntity getCartItem(ProductEntity product) {
    for (var item in cartItems) {
      if (item.product == product) return item;
    }
    return CartItemEntity(product: product, count: 1);
  }
}
