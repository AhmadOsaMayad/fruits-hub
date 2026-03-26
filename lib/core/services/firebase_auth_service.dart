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
      if (e.code == kWeakPasswordK) {
        throw CustomExceptions(message: kWeakPasswordV);
      } else if (e.code == kEmailAlreadyInUseK) {
        throw CustomExceptions(message: kEmailAlreadyInUseV);
      } else {
        throw CustomExceptions(message: e.message ?? kUnknownErrorV);
      }
    } catch (e) {
      log(e.toString());
      throw CustomExceptions(message: kUnexpectedErrorV);
    }
  }
}
