import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/utils/constants.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/generated/l10n.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    style: AppTextStyles.semiBold16.copyWith(
                      color: Color(0xFF2D9F5D),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            CustomButton(text: S.of(context).login, onPressed: () {}),
            SizedBox(height: 33),
            DontHaveAccWidget(),
          ],
        ),
      ),
    );
  }
}

class DontHaveAccWidget extends StatelessWidget {
  const DontHaveAccWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: S.of(context).dontHaveAccount,
            style: AppTextStyles.semiBold16.copyWith(
              color: Colors.grey.shade600,
            ),
          ),
          TextSpan(
            text: S.of(context).createAccount,
            style: AppTextStyles.semiBold16.copyWith(
              color: const Color(0xFF1B5E37),
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
