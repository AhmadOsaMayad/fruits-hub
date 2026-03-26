import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/core/errors/exceptions.dart';
import 'package:fruit_hub/core/utils/constants.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        'Exception in FirebaseAuthService.createUserWithEmailAndPassword:- Code: ${e.code} \n Message: ${e.toString()}',
      );
      if (e.code == kWeakPasswordK) {
        throw CustomExceptions(message: kWeakPasswordV);
      } else if (e.code == kEmailAlreadyInUseK) {
        throw CustomExceptions(message: kEmailAlreadyInUseV);
      } else if (e.code == kInvalidEmailK) {
        throw CustomExceptions(message: kInvalidEmailV);
      } else if (e.code == kNetworkRequestFailedK) {
        throw CustomExceptions(message: kNetworkRequestFailedV);
      } else {
        throw CustomExceptions(message: e.message ?? kUnknownErrorV);
      }
    } catch (e) {
      log(
        'Exception in FirebaseAuthService.createUserWithEmailAndPassword:- Message: ${e.toString()}',
      );
      throw CustomExceptions(message: kUnexpectedErrorV);
    }
  }

  Future<User> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        'Exception in FirebaseAuthService.loginWithEmailAndPassword:- Code: ${e.code} \n Message: ${e.toString()}',
      );
      if (e.code == kInvalidEmailK) {
        throw CustomExceptions(message: kInvalidEmailV);
      } else if (e.code == kNetworkRequestFailedK) {
        throw CustomExceptions(message: kNetworkRequestFailedV);
      } else if (e.code == kUserNotFoundK) {
        throw CustomExceptions(message: kPasswordOrEmailAreIncorrect);
      } else if (e.code == kWrongPasswordK) {
        throw CustomExceptions(message: kPasswordOrEmailAreIncorrect);
      } else if (e.code == kNetworkRequestFailedK) {
        throw CustomExceptions(message: kNetworkRequestFailedV);
      } else {
        throw CustomExceptions(message: e.message ?? kUnknownErrorV);
      }
    } catch (e) {
      log(
        'Exception in FirebaseAuthService.loginWithEmailAndPassword:- Message: ${e.toString()}',
      );
      throw CustomExceptions(message: kUnexpectedErrorV);
    }
  }
}
