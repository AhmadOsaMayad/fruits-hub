import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fruit_hub/core/errors/exceptions.dart';
import 'package:fruit_hub/core/utils/error_codes.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {
  final _kException1 = '$kExceptionIn $kFireAthSrvc';

  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    const kFuncName = 'createUserWithEmailAndPassword';
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        '$_kException1.$kFuncName \n $kEcode ${e.code} \n $kEmsg ${e.toString()}',
      );
      throw CustomExceptions(code: e.code, message: e.message ?? kUnknownError);
    } catch (e) {
      log('$_kException1.$kFuncName \n $kEmsg ${e.toString()}');

      throw CustomExceptions(message: kUnexpectedError);
    }
  }

  Future<User> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    const kFuncName = 'loginWithEmailAndPassword';
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        '$_kException1.$kFuncName \n $kEcode ${e.code} \n $kEmsg ${e.toString()}',
      );
      throw CustomExceptions(code: e.code, message: e.message ?? kUnknownError);
    } catch (e) {
      log('$_kException1.$kFuncName \n $kEmsg ${e.toString()}');
      throw CustomExceptions(message: kUnexpectedError);
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
    // try {
    final googleSignIn = GoogleSignIn();

    // Force sign-out at the app level so the chooser shows
    await googleSignIn.signOut();

    // Prompt user to pick an account
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    // try {
    // googleUser = await googleSignIn.signIn();
    if (googleUser == null) {
      throw CustomExceptions(code: kProcessAbortedK, message: kProcessAbortedK);
    }
    // } on Exception catch (e) {
    //   throw CustomCodeExceptions(code: e.toString());
    // }

    // Get authentication tokens
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    // Build Firebase credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Sign in to Firebase (creates new user if first time, logs in otherwise)
    final userCredential = await FirebaseAuth.instance.signInWithCredential(
      credential,
    );

    return userCredential.user!;
    // } on FirebaseException catch (e) {
    //   throw CustomCodeExceptions(code: kProcessAbortedK);
    // } on Exception catch (e) {
    //   throw CustomCodeExceptions(code: e.toString());
    // }
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
