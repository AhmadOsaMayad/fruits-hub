import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/helpers/build_snack_bar.dart';
import 'package:fruit_hub/core/utils/constants.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruit_hub/core/widgets/password_field.dart';
import 'package:fruit_hub/features/auth/presentation/views/shared/tappable_suffix_text.dart';
import 'package:fruit_hub/features/auth/presentation/views/signup/widgets/terms_and_conditions_widget.dart';
import 'package:fruit_hub/generated/l10n.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  late String userName, email, password;
  late bool isTermsAccepted = false;
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
              const SizedBox(height: 24),
              CustomTextFormField(
                onSaved: (value) => userName = value!,
                hintText: S.of(context).fullName,
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                onSaved: (value) => email = value!,
                hintText: S.of(context).email,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              PasswordField(onSaved: (value) => password = value!),
              const SizedBox(height: 16),
              TermsAndConditionsWidget(
                onChanged: (value) {
                  isTermsAccepted = value;
                  // setState(() {});
                },
              ),
              const SizedBox(height: 30),
              CustomButton(
                text: S.of(context).createAccount,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    if (isTermsAccepted) {
                      context
                          .read<SignupCubit>()
                          .createUserWithEmailAndPassword(
                            email: email,
                            password: password,
                            name: userName,
                          );
                    } else {
                      showSnackBar(context, S.of(context).pleaseAcceptTerms);
                    }
                  } else {
                    setState(() {
                      autoValidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
              const SizedBox(height: 26),
              TappableSuffixText(
                prefix: S.of(context).alreadyHaveAccount,
                suffix: S.of(context).login,
                justPop: true,
              ),
              const SizedBox(height: 33),
            ],
          ),
        ),
      ),
    );
  }
}
