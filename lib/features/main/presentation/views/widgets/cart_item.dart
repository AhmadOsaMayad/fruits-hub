import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          // margin: const EdgeInsets.all(4),
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
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('بطيخ', style: AppTextStyles.bold13),
                subtitle: Text(
                  '3 ${S.of(context).kg}',
                  style: AppTextStyles.regular13.copyWith(
                    color: const Color(0xFFF4A91F),
                  ),
                ),
                trailing: SvgPicture.asset(Assets.imagesTrash2),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const CircleAvatar(
                        radius: 16,
                        backgroundColor: AppColors.primary,
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                      const SizedBox(width: 18),
                      const Text('3', style: AppTextStyles.bold16),
                      const SizedBox(width: 18),
                      CircleAvatar(
                        radius: 17,
                        backgroundColor: Colors.grey.shade200,
                        child: const CircleAvatar(
                          radius: 16,
                          backgroundColor: Color(0xFFF3F5F7),
                          child: Icon(Icons.remove),
                        ),
                      ),
                    ],
                  ),
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
    );
  }
}
