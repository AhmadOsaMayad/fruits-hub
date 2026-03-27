import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/utils/constants.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/core/widgets/password_field.dart';
import 'package:fruit_hub/features/auth/presentation/cubits/cubit/login_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/views/sign_up_view.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/tappable_suffix_text.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/or_divider_widget.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/social_login_button.dart';
import 'package:fruit_hub/generated/l10n.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  late String email, password;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHPadding),
        child: Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: S.of(context).email,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
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
              CustomButton(
                text: S.of(context).login,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<LoginCubit>().loginUserWithEmailAndPassword(
                      email,
                      password,
                    );
                  } else {
                    setState(() {
                      autoValidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),

              // CustomButton(text: S.of(context).login, onPressed: () {}),
              SizedBox(height: 33),

              TappableSuffixText(
                prefix: S.of(context).dontHaveAccount,
                suffix: S.of(context).createAccount,
                onTapRoute: SignUpView.routeName,
              ),
              SizedBox(height: 33),
              OrDividerWidget(text: S.of(context).or),
              SizedBox(height: 32),
              SocialLoginButton(
                onPressed: () {
                  context.read<LoginCubit>().loginUserWithGoogle();
                },
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
                onPressed: () {
                  context.read<LoginCubit>().loginUserWithFacebook();
                },
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
