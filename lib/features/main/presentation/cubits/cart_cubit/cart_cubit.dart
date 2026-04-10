import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/entities/product_entity.dart';
import 'package:fruit_hub/features/main/domain/entities/cart_entity.dart';
import 'package:fruit_hub/features/main/domain/entities/cart_item_entity.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  CartEntity cartEntity = CartEntity(cartItems: []);

  void addProduct(ProductEntity product) {
    bool isExist = cartEntity.isExist(product);
    CartItemEntity cartItemEntity = cartEntity.getCartItem(product);
    if (isExist) {
      cartItemEntity.increaseCount();
    } else {
      cartEntity.addCartItem(cartItemEntity);
    }
    emit(CartItemAdded());
  }
}
