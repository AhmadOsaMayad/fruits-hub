import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/helpers/build_snack_bar.dart';
import 'package:fruit_hub/core/helpers/get_auth_errors_messages.dart';
import 'package:fruit_hub/core/widgets/loadable_body.dart';
import 'package:fruit_hub/features/auth/presentation/cubits/login_cubit/login_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/views/login/widgets/login_view_body.dart';
import 'package:fruit_hub/features/main/presentation/views/main_view.dart';
import 'package:fruit_hub/generated/l10n.dart';

class LoginViewBodyBlocConsumer extends StatelessWidget {
  const LoginViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          showSnackBar(
            context,
            state.code != null
                ? getErrorMessage(context, state.code!)
                : state.errorMessage,
          );
        }
        if (state is LoginSuccess) {
          Navigator.pushReplacementNamed(context, MainView.routeName);
          showSnackBar(context, S.of(context).loginSuccessful);
        }
      },
      builder: (context, state) {
        return LoadableBody(
          isLoading: state is LoginLoading,
          child: const LoginViewBody(),
        );
        // CustomLoadingIndicator(
        //   isLoading: state is LoginLoading,
        //   child: const LoginViewBody(),
        // );
      },
    );
  }
}
