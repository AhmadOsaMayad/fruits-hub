import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/circle_action_button.dart';

class CartItemActionButtons extends StatelessWidget {
  const CartItemActionButtons({
    super.key,
    required this.count,
    this.onIncrease,
    this.onDecrease,
  });
  final int count;
  final VoidCallback? onIncrease, onDecrease;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleActionButton(radius: 14, onTap: onIncrease),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('$count', style: AppTextStyles.bold16),
        ),
        CircleAvatar(
          radius: 15,
          backgroundColor: Colors.grey.shade200,
          child: CircleActionButton(
            radius: 14,
            backColor: const Color(0xFFF3F5F7),
            icon: Icons.remove,
            iconColor: null,
            onTap: onDecrease,
          ),
        ),
      ],
    );
  }
}
