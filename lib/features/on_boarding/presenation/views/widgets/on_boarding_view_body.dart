import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/core/services/shared_preference_singleton.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/constants.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/features/auth/presentation/views/login/login_view.dart';
import 'package:fruit_hub/features/on_boarding/presenation/views/widgets/on_boarding_page_view.dart';
import 'package:fruit_hub/generated/l10n.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController _pageController;
  var _currentPage = 0;

  @override
  void initState() {
    _pageController = PageController();

    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView(pageController: _pageController)),
        DotsIndicator(
          animate: true,
          position: _currentPage.toDouble(),
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primary,
            color:
                _currentPage == 0
                    ? AppColors.primary.withAlpha(112)
                    : AppColors.primary,
          ),
        ),
        const SizedBox(height: 29),
        Visibility(
          visible: _currentPage == 1,
          maintainAnimation: true,
          maintainState: true,
          maintainSize: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHPadding),
            child: CustomButton(
              text: S.of(context).onBoarding2ButtonText,
              onPressed: () {
                Prefs.setBool(kIsOnBoardingSeen, true);
                Navigator.of(context).pushReplacementNamed(LoginView.routeName);
              },
            ),
          ),
        ),
        const SizedBox(height: 46),
      ],
    );
  }
}
