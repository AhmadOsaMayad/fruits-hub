import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helpers/is_arabic.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/utils/static_decoration.dart';
import 'package:fruit_hub/features/checkout/presentation/views/shipping/widgets/active_dot_shipping_item.dart';
import 'package:fruit_hub/features/checkout/presentation/views/shipping/widgets/in_active_dot_shipping_item.dart';

class ShippingItem extends StatelessWidget {
  const ShippingItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.isSelected,
    this.onTap,
  });
  final String title, subTitle, price;
  final bool isSelected;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        clipBehavior: Clip.antiAlias,
        padding: EdgeInsets.only(
          left: isArabic() ? 13 : 28,
          top: 16,
          bottom: 16,
          right: isArabic() ? 28 : 13,
        ),
        decoration:
            isSelected
                ? AppDeco.activeShippingItem
                : AppDeco.inActiveShippingItem,
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isSelected
                  ? const ActiveDotShihppingItem()
                  : const InActiveDotShihppingItem(),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AppTextStyles.semiBold13),
                  const SizedBox(height: 6),
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      subTitle,
                      style: AppTextStyles.regular13.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Center(
                child: Text(
                  '\$$price',
                  style: AppTextStyles.semiBold13.copyWith(
                    color: AppColors.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
