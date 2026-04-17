import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/cust_img_holder_shimmer.dart';
import 'package:fruit_hub/core/widgets/custom_network_image.dart';
import 'package:fruit_hub/core/widgets/svg_ats.dart';
import 'package:fruit_hub/features/main/domain/entities/cart_item_entity.dart';
import 'package:fruit_hub/features/main/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub/features/main/presentation/views/cart/widgets/cart_item_action_buttons.dart';
import 'package:fruit_hub/generated/l10n.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.cartItem,
  }); //this.onRemove, this.onIncrease, this.onDecrease});

  // final VoidCallback? onRemove, onIncrease, onDecrease;
  final CartItemEntity cartItem;
  @override
  Widget build(BuildContext context) {
    var cartCubit = context.read<CartCubit>();
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            width: 80,
            height: 100,
            decoration: const BoxDecoration(color: AppCols.iceWhite),
            child:
                cartItem.product.imageUrl != null
                    ? CustomNetworkImage(imageUrl: cartItem.product.imageUrl!)
                    : const CustImgHolderShimmer(),
            // Image.asset(Assets.imagesWatermelon),
          ),
          const SizedBox(width: 17),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    cartItem.product.name,
                    style: AppTextStyles.bold13,
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      '${cartItem.totalWeight()} ${S.of(context).kg}',
                      style: AppTextStyles.regular13.copyWith(
                        color: AppCols.secondary,
                      ),
                    ),
                  ),
                  trailing: GestureDetector(
                    onTap:
                        () => cartCubit.removeProduct(
                          cartItem.product,
                        ), //onRemove,
                    child: const SvgAts(Assets.imagesTrash2),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CartItemActionButtons(
                      count: cartItem.count,
                      onDecrease:
                          () => cartCubit.removeProduct(
                            cartItem.product,
                            justDecrease: true,
                          ),
                      onIncrease:
                          () => cartCubit.addProduct(
                            cartItem.product,
                          ), //onIncrease,
                    ),
                    Text(
                      '\$${cartItem.totalPrice()}',
                      style: AppTextStyles.bold16.copyWith(
                        color: AppCols.secondary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
