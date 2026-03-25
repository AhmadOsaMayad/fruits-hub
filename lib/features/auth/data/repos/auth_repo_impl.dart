import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/errors/exceptions.dart';
import 'package:fruit_hub/core/errors/failures.dart';
import 'package:fruit_hub/core/services/firebase_auth_service.dart';
import 'package:fruit_hub/features/auth/data/models/user_model.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruit_hub/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.fromFireBaseUser(user));
    } on CustomExceptions catch (e) {
      return left(ServerFailure(e.toString()));
    } catch (e) {
      return left(
        ServerFailure('An unexpected error occurred. Please try again.'),
      );
    }

    // .then((user) {
    //   return Right(
    //     UserEntity(
    //       uId: user.uid,
    //       name: user.displayName ?? '',
    //       email: user.email ?? '',
    //     ),
    //   );
    // })
    // .catchError((error) {
    //   return Left(ServerFailure(error.toString()));
    // });
    // User=await firebaseAuthService.createUserWithEmailAndPassword(email: email, password: password).then((user) {
    //       return Right(UserEntity(uId: user.uid, name: user.displayName ?? '', email: user.email ?? ''));
    //     }).catchError((error) {
    //       return Left(ServerFailure(error.toString()));
    //     });
  }
}
