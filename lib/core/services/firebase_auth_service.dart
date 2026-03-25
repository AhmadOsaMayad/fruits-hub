import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/core/errors/exceptions.dart';

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
      if (e.code == 'weak-password') {
        throw CustomExceptions(message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomExceptions(
          message: 'The account already exists for that email.',
        );
      } else {
        throw CustomExceptions(
          message: e.message ?? 'An unknown error occurred.',
        );
      }
    } catch (e) {
      log(e.toString());
      throw CustomExceptions(
        message: 'An unexpected error occurred. Please try again.',
      );
    }
    // try {
    //   UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    //     email: email,
    //     password: password,
    //   );
    //   return userCredential.user!;
    // } on FirebaseAuthException catch (e) {
    //   throw Exception(e.message);
    // }
  }
}
