import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruit_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());
  final AuthRepo authRepo;

  Future<void> loginUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    emit(LoginLoading());
    var result = await authRepo.loginWithEmailAndPassword(
      email: email,
      password: password,
    );

    result.fold(
      (failure) =>
          emit(LoginFailure(errorMessage: failure.message, code: failure.code)),
      (user) => emit(LoginSuccess(userEntity: user)),
    );
  }

  Future<void> loginUserWithGoogle() async {
    emit(LoginLoading());
    var result = await authRepo.loginWithGoogle();

    result.fold(
      (failure) =>
          emit(LoginFailure(errorMessage: failure.message, code: failure.code)),
      (user) => emit(LoginSuccess(userEntity: user)),
    );
  }

  Future<void> loginUserWithFacebook() async {
    emit(LoginLoading());
    var result = await authRepo.loginWithFacebook();

    result.fold(
      (failure) =>
          emit(LoginFailure(errorMessage: failure.message, code: failure.code)),
      (user) => emit(LoginSuccess(userEntity: user)),
    );
  }
}
