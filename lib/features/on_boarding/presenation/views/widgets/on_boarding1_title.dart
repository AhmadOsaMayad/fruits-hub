import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/generated/l10n.dart';

class OnBoarding1Title extends StatelessWidget {
  const OnBoarding1Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: S.of(context).onBoarding1TitlePrefix,
            style: AppTextStyles.bold23.copyWith(
              // fontFamily: 'Cairo',
              color: const Color(0xFF0C0D0D),
            ),
          ),
          TextSpan(
            text: S.of(context).onBoarding1Title1,
            style: AppTextStyles.bold23.copyWith(
              // fontFamily: 'Cairo',
              color: const Color(0xFF1B5E37),
            ),
          ),
          TextSpan(
            text: S.of(context).onBoarding1Title2,
            style: AppTextStyles.bold23.copyWith(
              // fontFamily: 'Cairo',
              color: const Color(0xFFF4A91F),
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
