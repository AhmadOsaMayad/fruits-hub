import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/generated/l10n.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(S.of(context).bestSelling, style: AppTextStyles.bold16),
        TextButton(
          onPressed: onPressed,
          child: Text(S.of(context).more, style: AppTextStyles.regular13),
        ),
      ],
    );
  }
}
