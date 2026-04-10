import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/circle_action_button.dart';

class CartItemActionButtons extends StatelessWidget {
  const CartItemActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const CircleActionButton(radius: 14),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('3', style: AppTextStyles.bold16),
        ),
        CircleAvatar(
          radius: 15,
          backgroundColor: Colors.grey.shade200,
          child: const CircleActionButton(
            radius: 14,
            backColor: Color(0xFFF3F5F7),
            icon: Icons.remove,
            iconColor: null,
          ),
        ),
      ],
    );
  }
}
