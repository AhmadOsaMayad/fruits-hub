import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:svg_flutter/svg_flutter.dart';

class ProductsResultHeader extends StatelessWidget {
  const ProductsResultHeader({this.results = 0, super.key, this.onPressed});
  final void Function()? onPressed;
  final int results;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('$results ${S.of(context).results}', style: AppTextStyles.bold16),
        IconButton(
          onPressed: onPressed,
          icon: SvgPicture.asset(Assets.imagesFilter2, width: 24, height: 24),
        ),
      ],
    );
  }
}
