import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:svg_flutter/svg.dart';

class ActiveNavBarItem extends StatelessWidget {
  const ActiveNavBarItem({super.key, required this.icon, required this.title});
  final String icon, title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: ShapeDecoration(
          color: Color(0xFFEEEEEE),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: ShapeDecoration(
                color: const Color(0xFF1B5E37),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Center(child: SvgPicture.asset(icon)),
            ),
            SizedBox(width: 8),
            Text(
              title,
              style: AppTextStyles.semiBold11.copyWith(
                color: Color(0xFF1B5E37),
              ),
            ),
            SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}
