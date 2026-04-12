import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/circle_action_button.dart';

class ActiveStepItem extends StatelessWidget {
  const ActiveStepItem({this.stepNumber, super.key, required this.title});
  final String title;
  final String? stepNumber;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleActionButton(
          onTap: () {},
          icon: Icons.check,
          radius: 10,
          size: 18,
          child:
              stepNumber != null
                  ? Text(stepNumber!, style: AppTextStyles.bold13)
                  : null,
        ),
        const SizedBox(width: 4),
        Text(
          title,
          style: AppTextStyles.bold13.copyWith(color: AppColors.primary),
        ),
      ],
    );
  }
}

class InActiveStepItem extends StatelessWidget {
  const InActiveStepItem({
    required this.stepNumber,
    super.key,
    required this.title,
    this.isActive = false,
  });
  final String title;
  final String stepNumber;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleActionButton(
          backColor: isActive ? AppColors.primary : const Color(0xFFF3F5F7),
          onTap: () {},
          icon: Icons.check,
          radius: 9,
          size: 14,
          child:
              isActive
                  ? null
                  : Text(
                    stepNumber,
                    style: AppTextStyles.semiBold13.copyWith(
                      color: Colors.black,
                    ),
                  ),
        ),
        const SizedBox(width: 4),
        Text(
          title,
          style: AppTextStyles.bold13.copyWith(
            color: isActive ? AppColors.primary : Colors.grey,
          ),
        ),
      ],
    );
  }
}
