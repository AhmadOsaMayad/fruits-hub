import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/constants.dart';
import 'package:fruit_hub/features/main/domain/entities/cart_item_entity.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/cart_item.dart';

class CartItemSliverList extends StatelessWidget {
  const CartItemSliverList({super.key, required this.cartItems});
  final List<CartItemEntity> cartItems;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: cartItems.length,
      itemBuilder:
          (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHPadding),

            child: CartItem(cartItem: cartItems[index]),
          ),
      separatorBuilder: (context, index) => const CustomDivider(),
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(color: Color(0xFFF1F1F5), height: 22);
  }
}
