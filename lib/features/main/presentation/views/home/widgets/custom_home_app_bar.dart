import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helpers/get_user.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/notification_widget.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(Assets.imagesProfileAvatar),
      title: Text(
        'صباح الخير ...!',
        style: AppTextStyles.regular16.copyWith(color: const Color(0xFF949D9E)),
      ),
      subtitle: Text(
        getUser().name,
        style: AppTextStyles.bold16.copyWith(color: const Color(0xFF0C0D0D)),
      ),
      trailing: const NotificationWidget(),
    );
  }
}
