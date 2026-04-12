import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helpers/is_arabic.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:svg_flutter/svg_flutter.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.icon,
  });
  final VoidCallback onPressed;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          overlayColor: AppColors.primary,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          side: const BorderSide(color: Color(0xFFDCDEDE), width: 1),
        ),
        // icon: SvgPicture.asset(icon, height: 24, width: 24),
        child: ListTile(
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
          ),
          leading: SvgPicture.asset(icon, height: 24, width: 24),
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyles.semiBold16.copyWith(color: const Color(0xFF0C0D0D)),
          ),
        ),
      ),
    );
  }
}

class SocialLoginButton1 extends StatelessWidget {
  const SocialLoginButton1({
    super.key,
    required this.onPressed,
    required this.title,
    required this.icon,
  });
  final VoidCallback onPressed;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextButton.icon(
        onPressed: onPressed,
        label: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: isArabic() ? 16.0 : 0.0,
                right: isArabic() ? 0.0 : 16.0,
              ),
              child: Text(
                title,
                style: AppTextStyles.semiBold16.copyWith(
                  color: const Color(0xFF0C0D0D),
                ),
              ),
            ),
          ],
        ),
        style: TextButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          overlayColor: AppColors.primary,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          side: const BorderSide(color: Color(0xFFDCDEDE), width: 1),
        ),
        icon: Padding(
          padding: EdgeInsets.only(
            right: isArabic() ? 16.0 : 0.0,
            left: isArabic() ? 0.0 : 16.0,
          ),
          child: SvgPicture.asset(icon, height: 24, width: 24),
        ),
      ),
    );
  }
}
