import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';

class AppDeco {
  static const activeShippingItem = ShapeDecoration(
    color: Color(0x33D9D9D9),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
      side: BorderSide(width: 1, color: AppCols.primary),
    ),
  );

  static const inActiveShippingItem = ShapeDecoration(
    color: Color(0x33D9D9D9),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
  );

  static const activeDotShippingItem = ShapeDecoration(
    shape: OvalBorder(side: BorderSide(width: 4, color: AppCols.white)),
    color: AppCols.primary,
  );

  static const inActiveDotShippingItem = ShapeDecoration(
    shape: OvalBorder(side: BorderSide(width: 1, color: AppCols.silverMist)),
  );

  static const greyBoxDeco = ShapeDecoration(
    color: Color(0x7FF2F3F3),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
  );
}
