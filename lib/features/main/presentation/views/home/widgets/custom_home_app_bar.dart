import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helpers/get_user.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/notification_widget.dart';
import 'package:fruit_hub/generated/l10n.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(Assets.imagesProfileAvatar),
      title: Text(
        S.of(context).goodMorning,
        style: AppTextStyles.regular16.copyWith(color: AppCols.silverMist),
      ),
      subtitle: Text(
        getUser().name,
        style: AppTextStyles.bold16.copyWith(color: AppCols.onyxBlack),
      ),
      trailing: const NotificationWidget(),
    );
  }
}
