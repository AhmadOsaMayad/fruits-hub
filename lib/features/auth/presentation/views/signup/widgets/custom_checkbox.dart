import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
    super.key,
    required this.isChecked,
    required this.onChecked,
  });
  final bool isChecked;
  final ValueChanged<bool> onChecked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChecked(!isChecked);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        width: 24,
        height: 24,
        decoration: ShapeDecoration(
          color: isChecked ? AppCols.primary : AppCols.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.5,
              color: isChecked ? Colors.transparent : AppCols.cloudGrey,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const Icon(
          Icons.check,
          size: 16,
          color: AppCols.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
