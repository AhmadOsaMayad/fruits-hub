import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_defs.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/svg_ats.dart';
import 'package:fruit_hub/features/checkout/domain/entities/order_entity.dart';
import 'package:fruit_hub/features/checkout/presentation/views/payment/widgets/payment_item.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:provider/provider.dart';

class ShippingAddressWidget extends StatelessWidget {
  const ShippingAddressWidget({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PaymentItem(
      title: S.of(context).shippingAddress,
      child: Row(
        children: [
          const SvgAts(Assets.imagesLocation, color: AppCols.primary),
          const SizedBox(width: 8),
          Expanded(
            child: Row(
              children: [
                Flexible(
                  child: Text(
                    ' ${context.read<OrderEntity>().shippingAddress.toString()}',
                    maxLines: 1,
                    style: AppTextStyles.regular13.copyWith(
                      overflow: TextOverflow.ellipsis,
                      color: AppCols.graniteGrey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              pageController.animateToPage(
                1,
                duration: kDefDuration,
                curve: Curves.easeIn,
              );
            },
            child: const SizedBox(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgAts(Assets.imagesEdit, color: AppCols.primary),
                  SizedBox(width: 4),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
