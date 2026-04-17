import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helpers/is_arabic.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/svg_ats.dart';

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
          overlayColor: AppCols.primary,
          backgroundColor: AppCols.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          side: const BorderSide(color: AppCols.cloudGrey, width: 1),
        ),
        child: ListTile(
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
          ),
          leading: SvgAts(icon, height: 24, width: 24),
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyles.semiBold16.copyWith(color: AppCols.onyxBlack),
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
                  color: AppCols.onyxBlack,
                ),
              ),
            ),
          ],
        ),
        style: TextButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          overlayColor: AppCols.primary,
          backgroundColor: AppCols.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          side: const BorderSide(color: AppCols.cloudGrey, width: 1),
        ),
        icon: Padding(
          padding: EdgeInsets.only(
            right: isArabic() ? 16.0 : 0.0,
            left: isArabic() ? 0.0 : 16.0,
          ),
          child: SvgAts(icon, height: 24, width: 24),
        ),
      ),
    );
  }
}
