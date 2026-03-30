import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/helpers/build_snack_bar.dart';
import 'package:fruit_hub/core/helpers/get_auth_errors_messages.dart';
import 'package:fruit_hub/core/widgets/custom_loading_indicator.dart';
import 'package:fruit_hub/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:fruit_hub/generated/l10n.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupFailure) {
          buildSnackBar(
            context,
            getAuthErrorMessage(context, state.errorMessage),
          );
        } else if (state is SignupSuccess) {
          Navigator.pop(context);
          buildSnackBar(context, S.of(context).signUpSuccessful);
        }
      },
      builder: (context, state) {
        return CustomLoadingIndicator(
          isLoading: state is SignupLoading,
          child: const SignUpViewBody(),
        );
      },
    );
  }
}
