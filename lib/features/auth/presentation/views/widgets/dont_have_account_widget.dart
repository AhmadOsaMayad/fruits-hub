import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/generated/l10n.dart';

class DontHaveAccWidget extends StatelessWidget {
  const DontHaveAccWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: S.of(context).dontHaveAccount,
            style: AppTextStyles.semiBold16.copyWith(
              color: Colors.grey.shade600,
            ),
          ),
          TextSpan(
            text: S.of(context).createAccount,
            style: AppTextStyles.semiBold16.copyWith(
              color: const Color(0xFF1B5E37),
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
