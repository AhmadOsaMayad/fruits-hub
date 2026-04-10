import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/generated/l10n.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({super.key, required this.itemsCount});
  final int itemsCount;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(color: Color(0xFFEBF9F1)),
      child: Center(
        child: Text(
          '${S.of(context).youHave} $itemsCount ${S.of(context).productsInCart}',
          style: AppTextStyles.regular13.copyWith(color: AppColors.primary),
        ),
      ),
    );
  }
}
