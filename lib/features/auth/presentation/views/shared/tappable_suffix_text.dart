import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

class TappableSuffixText extends StatelessWidget {
  const TappableSuffixText({
    super.key,
    required this.prefix,
    required this.suffix,
    this.onTapRoute,
    this.textAlign,
    this.justPop = false,
  });
  final String prefix;
  final String suffix;
  final String? onTapRoute;
  final bool justPop;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: prefix,
            style: AppTextStyles.semiBold13.copyWith(
              color: Colors.grey.shade600,
            ),
          ),
          TextSpan(
            recognizer:
                TapGestureRecognizer()
                  ..onTap =
                      () =>
                          onTapRoute != null
                              ? Navigator.pushNamed(context, onTapRoute!)
                              : justPop
                              ? Navigator.pop(context)
                              : null,
            text: suffix,
            style: AppTextStyles.bold13.copyWith(
              color: const Color(0xFF2D9F5D),
            ),
          ),
        ],
      ),
      textAlign: textAlign ?? TextAlign.center,
    );
  }
}
