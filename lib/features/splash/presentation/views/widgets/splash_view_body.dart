import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helpers/is_arabic.dart';
import 'package:fruit_hub/core/services/firebase_auth_service.dart';
import 'package:fruit_hub/core/services/shared_preference_singleton.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/constants.dart';
import 'package:fruit_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruit_hub/features/main/presentation/views/main_view.dart';
import 'package:fruit_hub/features/on_boarding/presenation/views/on_boarding_view.dart';
import 'package:svg_flutter/svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment:
              isArabic() ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [SvgPicture.asset(Assets.imagesPlant)],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [SvgPicture.asset(Assets.imagesLogo)],
        ),
        SvgPicture.asset(Assets.imagesSplashBottom, fit: BoxFit.fill),
      ],
    );
  }

  void executeNavigation() {
    bool isOnBoardingSeen = Prefs.getBool(kIsOnBoardingSeen);
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        if (isOnBoardingSeen) {
          var isLoggedIn = FirebaseAuthService().isLoggedIn();
          if (isLoggedIn) {
            Navigator.pushReplacementNamed(context, MainView.routeName);
          } else {
            Navigator.pushReplacementNamed(context, LoginView.routeName);
          }
        } else {
          Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
        }
      }
    });
  }
}
