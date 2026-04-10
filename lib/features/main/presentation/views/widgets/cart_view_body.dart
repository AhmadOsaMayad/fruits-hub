import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/msg_place_holder.dart';
import 'package:fruit_hub/features/main/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/cart_header.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/cart_item_sliver_list.dart';
import 'package:fruit_hub/generated/l10n.dart';

class CartViewBody extends StatefulWidget {
  const CartViewBody({super.key});

  @override
  State<CartViewBody> createState() => _CartViewBodyState();
}

class _CartViewBodyState extends State<CartViewBody> {
  @override
  Widget build(BuildContext context) {
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
                    title: S.of(context).cart,
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
                  context.read<CartCubit>().cartEntity.cartItems.isEmpty
                      ? const SizedBox()
                      : const CustomDivider(),
            ),
            context.read<CartCubit>().cartEntity.cartItems.isEmpty
                ? SliverToBoxAdapter(
                  child: MsgPlaceHolder(msg: S.of(context).yourCartIsEmpty),
                )
                : CartItemSliverList(
                  // onDecrease: ,
                  cartItems: context.read<CartCubit>().cartEntity.cartItems,
                ),
            SliverToBoxAdapter(
              child:
                  context.read<CartCubit>().cartEntity.cartItems.isEmpty
                      ? const SizedBox()
                      : const CustomDivider(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: MediaQuery.sizeOf(context).height * 0.13),
            ),
          ],
        ),
        Positioned(
          right: 16,
          left: 16,
          bottom: MediaQuery.sizeOf(context).height * 0.05,
          child: CustomButton(
            text:
                '${S.of(context).totalPayment} ${context.read<CartCubit>().cartEntity.totalPrice()}\$ ${S.of(context).only}',
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
