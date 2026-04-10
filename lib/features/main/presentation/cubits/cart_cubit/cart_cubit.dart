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
      if (!(cartItemEntity.increaseCount())) {
        emit(CartProductMaxQuantity());
        return;
      }
    } else {
      cartEntity.addCartItem(cartItemEntity);
    }
    emit(CartProductAdded());
  }

  void removeProduct(ProductEntity product, {bool justDecrease = false}) {
    bool isExist = cartEntity.isExist(product);
    if (isExist) {
      CartItemEntity cartItemEntity = cartEntity.getCartItem(product);
      if (justDecrease) {
        if (cartItemEntity.decreaseCount()) {
          emit(CartProductDecreased());
          return;
        }
        // else {
        //   cartEntity.removeCartItem(cartItemEntity);
        // }
      }
      cartEntity.removeCartItem(cartItemEntity);
      emit(CartProductRemoved());
    } else {
      emit(CartProductNotFound());
    }
  }
}
