import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helpers/is_arabic.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/svg_ats.dart';

class ActiveNavBarItem extends StatelessWidget {
  const ActiveNavBarItem({super.key, required this.icon, required this.title});
  final String icon, title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(
          left: isArabic() ? 16 : 0,
          right: isArabic() ? 0 : 16,
        ),
        decoration: ShapeDecoration(
          color: const Color(0xFFEEEEEE),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 35,
              height: 35,
              decoration: ShapeDecoration(
                color: AppCols.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Center(child: SvgAts(icon)),
            ),
            const SizedBox(width: 4),
            Text(
              title,
              style: AppTextStyles.semiBold11.copyWith(color: AppCols.primary),
            ),
            // const SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}
