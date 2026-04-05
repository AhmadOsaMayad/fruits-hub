import 'package:flutter/material.dart';
import 'package:fruit_hub/core/entities/product_entity.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/cust_img_holder_shimmer.dart';
import 'package:fruit_hub/core/widgets/custom_network_image.dart';
import 'package:fruit_hub/generated/l10n.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.product});
  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163,
      height: 250,
      decoration: ShapeDecoration(
        color: const Color(0xFFF3F5F7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                const SizedBox(height: 20),
                product.imageUrl != null
                    ? Flexible(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: CustomNetworkImage(imageUrl: product.imageUrl!),
                      ),
                    )
                    : const CustImgHolderShimmer(aspect: 1),
                const SizedBox(height: 20),
                ListTile(
                  // title: Text('WaterMelon', style: AppTextStyles.semiBold13),
                  title: Text(product.name, style: AppTextStyles.semiBold13),
                  subtitle: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          // text: '20 Euro',
                          text: '\$${product.price}',
                          style: AppTextStyles.bold13.copyWith(
                            color: const Color(0xFFF4A91F),
                          ),
                        ),
                        TextSpan(
                          text: ' / ',
                          style: AppTextStyles.bold13.copyWith(
                            color: const Color(0xFFF8C76D),
                          ),
                        ),
                        TextSpan(
                          // text: 'Kg',
                          text: S.of(context).kg,
                          style: AppTextStyles.bold13.copyWith(
                            color: const Color(0xFFF8C76D),
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: const CircleAvatar(
                    backgroundColor: AppColors.primary,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
