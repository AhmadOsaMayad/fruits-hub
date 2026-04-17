import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/generated/l10n.dart';

class OnBoarding1Title extends StatelessWidget {
  const OnBoarding1Title({super.key});

  @override
  Widget build(BuildContext context) {
    var sText = S.of(context);
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: sText.onBoarding1TitlePrefix,
            style: AppTextStyles.bold23.copyWith(color: AppCols.onyxBlack),
          ),
          TextSpan(
            text: sText.onBoarding1Title1,
            style: AppTextStyles.bold23.copyWith(color: AppCols.primary),
          ),
          TextSpan(
            text: sText.onBoarding1Title2,
            style: AppTextStyles.bold23.copyWith(color: AppCols.secondary),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
