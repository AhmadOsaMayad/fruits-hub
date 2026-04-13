import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/checkout/domain/entities/order_entity.dart';
import 'package:fruit_hub/features/checkout/presentation/views/payment/widgets/payment_item.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:provider/provider.dart';
import 'package:svg_flutter/svg_flutter.dart';

class ShippingAddressWidget extends StatelessWidget {
  const ShippingAddressWidget({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    // log(context.read<OrderInputEntity>().toString());
    return PaymentItem(
      title: S.of(context).shippingAddress,
      child: Row(
        children: [
          SvgPicture.asset(Assets.imagesLocation),
          const SizedBox(width: 8),
          Text(
            ' ${context.read<OrderEntity>().shippingAddress}',
            style: AppTextStyles.regular13.copyWith(
              color: const Color(0xFF4E5556),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              pageController.animateToPage(
                1,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
            child: SizedBox(
              child: Row(
                children: [
                  SvgPicture.asset(Assets.imagesEdit),
                  const SizedBox(width: 4),
                  Text(
                    S.of(context).edit,
                    style: AppTextStyles.semiBold13.copyWith(
                      color: const Color(0xFF949D9E),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
