import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';

class CircleActionButton extends StatelessWidget {
  const CircleActionButton({
    super.key,
    this.onTap,
    this.radius,
    this.icon = Icons.add,
    this.backColor = AppColors.primary,
    this.iconColor = Colors.white,
  });
  final VoidCallback? onTap;
  final double? radius;
  final IconData icon;
  final Color backColor;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: radius,
        backgroundColor: backColor,
        child: Icon(icon, color: iconColor),
      ),
    );
  }
}
