import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/constants.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/tappable_suffix_text.dart';
import 'package:fruit_hub/generated/l10n.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHPadding),
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: S.of(context).fullName,
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 16),
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
            SizedBox(height: 16),
            Transform.translate(
              offset: Offset(14, 0),
              child: Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  SizedBox(
                    width:
                        MediaQuery.sizeOf(context).width - (kHPadding * 2) - 48,
                    child: TappableSuffixText(
                      textAlign: TextAlign.start,
                      prefix: S.of(context).byCreatingAccount,
                      suffix: S.of(context).termsAndConditions,
                      onTapRoute: LoginView.routeName,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 33),
            CustomButton(text: S.of(context).createAccount, onPressed: () {}),
            SizedBox(height: 33),
            TappableSuffixText(
              prefix: S.of(context).alreadyHaveAccount,
              suffix: S.of(context).login,
              onTapRoute: LoginView.routeName,
            ),
            SizedBox(height: 33),
          ],
        ),
      ),
    );
  }
}
