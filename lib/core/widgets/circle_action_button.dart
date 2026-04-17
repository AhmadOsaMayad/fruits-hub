import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';

class CircleActionButton extends StatelessWidget {
  const CircleActionButton({
    this.child,
    super.key,
    this.onTap,
    this.radius,
    this.size,
    this.icon = Icons.add,
    this.backColor = AppCols.primary,
    this.iconColor = AppCols.white,
  });
  final VoidCallback? onTap;
  final double? radius, size;
  final IconData icon;
  final Color backColor;
  final Color? iconColor;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: radius,
        backgroundColor: backColor,
        child: child ?? Icon(icon, color: iconColor, size: size),
      ),
    );
  }
}
