import 'package:flutter/material.dart';
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
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible:
              (pageController.hasClients ? pageController.page!.round() : 0) ==
              0,
          image: Assets.imagesPageViewItem1Image,
          backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
          subtitle: S.of(context).onBoarding1Subtitle,
          title: OnBoarding1Title(),
        ),
        PageViewItem(
          isVisible:
              (pageController.hasClients ? pageController.page!.round() : 1) ==
              0,
          image: Assets.imagesPageViewItem2Image,
          backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
          subtitle: S.of(context).onBoarding2Subtitle,
          title: Text(
            S.of(context).onBoarding2Title,
            style: AppTextStyles.bold23.copyWith(color: Color(0xFF0C0D0D)),
          ),
        ),
      ],
    );
  }
}
