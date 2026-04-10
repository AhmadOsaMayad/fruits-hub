import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/main/domain/entities/cart_item_entity.dart';
import 'package:fruit_hub/features/main/presentation/views/widgets/cart_item_action_buttons.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItem});
  final CartItemEntity cartItem;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            width: 80,
            height: 100,
            decoration: const BoxDecoration(color: Color(0xFFF3F5F7)),
            child: Image.asset(Assets.imagesWatermelon),
          ),
          const SizedBox(width: 17),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('بطيخ', style: AppTextStyles.bold13),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      '3 ${S.of(context).kg}',
                      style: AppTextStyles.regular13.copyWith(
                        color: const Color(0xFFF4A91F),
                      ),
                    ),
                  ),
                  trailing: SvgPicture.asset(Assets.imagesTrash2),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CartItemActionButtons(),
                    Text(
                      '\$470',
                      style: AppTextStyles.bold16.copyWith(
                        color: const Color(0xFFF4A91F),
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
