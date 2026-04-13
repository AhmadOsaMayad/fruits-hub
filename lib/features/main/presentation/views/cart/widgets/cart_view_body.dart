import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/msg_place_holder.dart';
import 'package:fruit_hub/features/checkout/presentation/views/checkout_view.dart';
import 'package:fruit_hub/features/main/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub/features/main/presentation/views/cart/widgets/cart_header.dart';
import 'package:fruit_hub/features/main/presentation/views/cart/widgets/cart_item_sliver_list.dart';
import 'package:fruit_hub/generated/l10n.dart';

class CartViewBody extends StatefulWidget {
  const CartViewBody({super.key});

  @override
  State<CartViewBody> createState() => _CartViewBodyState();
}

class _CartViewBodyState extends State<CartViewBody> {
  @override
  Widget build(BuildContext context) {
    var cartEntity = context.read<CartCubit>().cartEntity;
    var cartItems = cartEntity.cartItems;
    var sText = S.of(context);
    var height = MediaQuery.sizeOf(context).height;
    return Stack(
      children: [
        CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  buildAppBar(
                    context,
                    title: sText.cart,
                    showBackButton: false,
                    showNotification: false,
                  ),
                  const SizedBox(height: 16),
                  CartHeader(
                    itemsCount:
                        context.watch<CartCubit>().cartEntity.cartItems.length,
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child:
                  cartItems.isEmpty ? const SizedBox() : const CustomDivider(),
            ),
            cartItems.isEmpty
                ? SliverToBoxAdapter(
                  child: MsgPlaceHolder(msg: sText.yourCartIsEmpty),
                )
                : CartItemSliverList(
                  // onDecrease: ,
                  cartItems: cartItems,
                ),
            SliverToBoxAdapter(
              child:
                  cartItems.isEmpty ? const SizedBox() : const CustomDivider(),
            ),
            SliverToBoxAdapter(child: SizedBox(height: height * 0.13)),
          ],
        ),
        Positioned(
          right: 16,
          left: 16,
          bottom: height * 0.05,
          child: CustomButton(
            text:
                '${sText.totalPayment} ${cartEntity.totalPrice()}\$ ${sText.only}',
            onPressed: () {
              if (cartItems.isNotEmpty) {
                Navigator.pushNamed(
                  context,
                  CheckoutView.routeName,
                  arguments: cartEntity,
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
