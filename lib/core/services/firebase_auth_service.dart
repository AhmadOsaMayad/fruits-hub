import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fruit_hub/core/errors/exceptions.dart';
import 'package:fruit_hub/core/utils/constants.dart';
import 'package:google_sign_in/google_sign_in.dart';

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

  // Future<User> signInWithGoogle() async {
  //   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  //   final GoogleSignInAuthentication? googleAuth =
  //       await googleUser?.authentication;
  //   final credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth?.accessToken,
  //     idToken: googleAuth?.idToken,
  //   );
  //   return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  // }
  Future<User> signInWithGoogle() async {
    final googleSignIn = GoogleSignIn();

    // Force sign-out at the app level so the chooser shows
    await googleSignIn.signOut();

    // Prompt user to pick an account
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    // Get authentication tokens
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Build Firebase credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Sign in to Firebase (creates new user if first time, logs in otherwise)
    final userCredential = await FirebaseAuth.instance.signInWithCredential(
      credential,
    );

    return userCredential.user!;
  }

  Future<User> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();
    await FacebookAuth.instance.logOut();
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);
    return (await FirebaseAuth.instance.signInWithCredential(
      facebookAuthCredential,
    )).user!;
  }

  Future deleteUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }

  bool isLoggedIn() => FirebaseAuth.instance.currentUser != null;
}
