import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/widgets/svg_ats.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const ShapeDecoration(
        color: Color(0xFFEEF8ED),
        shape: OvalBorder(),
      ),
      child: const SvgAts(Assets.imagesNotificationActive),
    );
  }
}
