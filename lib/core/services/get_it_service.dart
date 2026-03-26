import 'package:fruit_hub/core/services/firebase_auth_service.dart';
import 'package:fruit_hub/features/auth/data/repos/auth_repo_impl.dart';
import 'package:fruit_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  // Register services
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());

  // Register repositories
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(firebaseAuthService: getIt<FirebaseAuthService>()),
  );

  // // Register cubits
  // getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt<AuthRepo>()));
}
