import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/utils/constants.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/dont_have_account_widget.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/or_divider_widget.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/social_login_button.dart';
import 'package:fruit_hub/generated/l10n.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomTextFormField(
                hintText: S.of(context).email,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),
              CustomTextFormField(
                hintText: S.of(context).password,
                keyboardType: TextInputType.visiblePassword,
                suffixIcon: const Icon(
                  Icons.remove_red_eye,
                  color: Color(0xFFC9CECF),
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      S.of(context).forgotPassword,
                      style: AppTextStyles.semiBold13.copyWith(
                        color: Color(0xFF2D9F5D),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 33),
              CustomButton(text: S.of(context).login, onPressed: () {}),
              SizedBox(height: 33),
              DontHaveAccWidget(),
              SizedBox(height: 33),
              OrDividerWidget(text: S.of(context).or),
              SizedBox(height: 32),
              SocialLoginButton(
                onPressed: () {},
                title: S.of(context).logInWithGoogle,
                icon: Assets.imagesGoogleIcon,
              ),
              SizedBox(height: 16),
              SocialLoginButton(
                onPressed: () {},
                title: S.of(context).logInWithApple,
                icon: Assets.imagesAppleIcon,
              ),
              SizedBox(height: 16),
              SocialLoginButton(
                onPressed: () {},
                title: S.of(context).logInWithFacebook,
                icon: Assets.imagesFacebookIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
