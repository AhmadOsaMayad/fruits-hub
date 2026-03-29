import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:svg_flutter/svg_flutter.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

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
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border_outlined),
              //  SvgPicture.asset(Assets.imagesHeartOutline),
            ),
            // child: SvgPicture.asset(Assets.imagesHeartOutline),
          ),
          Positioned.fill(
            child: Column(
              children: [
                SizedBox(height: 20),
                Image.asset(Assets.imagesWatermelon),
                SizedBox(height: 24),
                ListTile(
                  title: Text(
                    'بطيخ',
                    textAlign: TextAlign.right,
                    style: AppTextStyles.semiBold13,
                  ),
                  subtitle: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '20جنية ',
                          style: AppTextStyles.bold13.copyWith(
                            color: Color(0xFFF4A91F),
                          ),
                        ),
                        TextSpan(
                          text: '/',
                          style: AppTextStyles.bold13.copyWith(
                            color: Color(0xFFF8C76D),
                          ),
                        ),
                        TextSpan(
                          text: ' الكيلو',
                          style: AppTextStyles.bold13.copyWith(
                            color: Color(0xFFF8C76D),
                          ),
                        ),
                      ],
                    ),
                    // textAlign: isArabic() ? TextAlign.right : TextAlign.left,
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: AppColors.primary,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
