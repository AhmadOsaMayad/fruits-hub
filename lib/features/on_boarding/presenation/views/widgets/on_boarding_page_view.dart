import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/on_boarding/presenation/views/widgets/on_boarding1_title.dart';
import 'package:fruit_hub/features/on_boarding/presenation/views/widgets/page_view_item.dart';
import 'package:fruit_hub/generated/l10n.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    var sText = S.of(context);
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible: true,
          image: Assets.imagesPageViewItem1Image,
          backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
          subtitle: sText.onBoarding1Subtitle,
          title: const OnBoarding1Title(),
        ),
        PageViewItem(
          isVisible: false,
          image: Assets.imagesPageViewItem2Image,
          backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
          subtitle: sText.onBoarding2Subtitle,
          title: Text(
            sText.onBoarding2Title,
            style: AppTextStyles.bold23.copyWith(color: AppCols.onyxBlack),
          ),
        ),
      ],
    );
  }
}
