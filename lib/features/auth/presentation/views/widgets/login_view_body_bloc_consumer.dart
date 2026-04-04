import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/helpers/build_snack_bar.dart';
import 'package:fruit_hub/core/widgets/custom_loading_indicator.dart';
import 'package:fruit_hub/features/auth/presentation/cubits/cubit/login_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:fruit_hub/features/main/presentation/views/main_view.dart';
import 'package:fruit_hub/generated/l10n.dart';

class LoginViewBodyBlocConsumer extends StatelessWidget {
  const LoginViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          buildSnackBar(context, state.errorMessage);
        }
        if (state is LoginSuccess) {
          Navigator.pushReplacementNamed(context, MainView.routeName);
          buildSnackBar(context, S.of(context).loginSuccessful);
        }
      },
      builder: (context, state) {
        return CustomLoadingIndicator(
          isLoading: state is LoginLoading,
          child: const LoginViewBody(),
        );
      },
    );
  }
}
