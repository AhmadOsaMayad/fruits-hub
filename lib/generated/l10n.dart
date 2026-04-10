// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Discover a unique shopping experience with FruitHUB. Explore our wide selection of fresh and excellent fruits and get the best deals and high quality.`
  String get onBoarding1Subtitle {
    return Intl.message(
      'Discover a unique shopping experience with FruitHUB. Explore our wide selection of fresh and excellent fruits and get the best deals and high quality.',
      name: 'onBoarding1Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Fruit`
  String get onBoarding1Title1 {
    return Intl.message('Fruit', name: 'onBoarding1Title1', desc: '', args: []);
  }

  /// `HUB`
  String get onBoarding1Title2 {
    return Intl.message('HUB', name: 'onBoarding1Title2', desc: '', args: []);
  }

  /// `Welcome to `
  String get onBoarding1TitlePrefix {
    return Intl.message(
      'Welcome to ',
      name: 'onBoarding1TitlePrefix',
      desc: '',
      args: [],
    );
  }

  /// `We provide you with the best selected fruits. Take a look at the details, images, and reviews to ensure you choose the perfect fruit.`
  String get onBoarding2Subtitle {
    return Intl.message(
      'We provide you with the best selected fruits. Take a look at the details, images, and reviews to ensure you choose the perfect fruit.',
      name: 'onBoarding2Subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Search and Shop`
  String get onBoarding2Title {
    return Intl.message(
      'Search and Shop',
      name: 'onBoarding2Title',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `Get Started`
  String get onBoarding2ButtonText {
    return Intl.message(
      'Get Started',
      name: 'onBoarding2ButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account? `
  String get dontHaveAccount {
    return Intl.message(
      'Don\'t have an account? ',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? `
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account? ',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get letsCreateAccount {
    return Intl.message(
      'Create Account',
      name: 'letsCreateAccount',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message('Or', name: 'or', desc: '', args: []);
  }

  /// `Sign in with Google`
  String get logInWithGoogle {
    return Intl.message(
      'Sign in with Google',
      name: 'logInWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Facebook`
  String get logInWithFacebook {
    return Intl.message(
      'Sign in with Facebook',
      name: 'logInWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Apple`
  String get logInWithApple {
    return Intl.message(
      'Sign in with Apple',
      name: 'logInWithApple',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get createNewAccount {
    return Intl.message(
      'Create New Account',
      name: 'createNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message('Full Name', name: 'fullName', desc: '', args: []);
  }

  /// `By creating an account, you agree to `
  String get byCreatingAccount {
    return Intl.message(
      'By creating an account, you agree to ',
      name: 'byCreatingAccount',
      desc: '',
      args: [],
    );
  }

  /// `our Terms and Conditions`
  String get termsAndConditions {
    return Intl.message(
      'our Terms and Conditions',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `Please fill this field.`
  String get pleaseFillThisField {
    return Intl.message(
      'Please fill this field.',
      name: 'pleaseFillThisField',
      desc: '',
      args: [],
    );
  }

  /// `Please accept the terms and conditions.`
  String get pleaseAcceptTerms {
    return Intl.message(
      'Please accept the terms and conditions.',
      name: 'pleaseAcceptTerms',
      desc: '',
      args: [],
    );
  }

  /// `Signup successful! Welcome!`
  String get signUpSuccessful {
    return Intl.message(
      'Signup successful! Welcome!',
      name: 'signUpSuccessful',
      desc: '',
      args: [],
    );
  }

  /// `Login successful! Welcome!`
  String get loginSuccessful {
    return Intl.message(
      'Login successful! Welcome!',
      name: 'loginSuccessful',
      desc: '',
      args: [],
    );
  }

  /// `Look for.......`
  String get lookFor {
    return Intl.message('Look for.......', name: 'lookFor', desc: '', args: []);
  }

  /// `Eid Offers`
  String get eidOffers {
    return Intl.message('Eid Offers', name: 'eidOffers', desc: '', args: []);
  }

  /// `25% Discount`
  String get discount25 {
    return Intl.message('25% Discount', name: 'discount25', desc: '', args: []);
  }

  /// `Shop Now`
  String get shopNow {
    return Intl.message('Shop Now', name: 'shopNow', desc: '', args: []);
  }

  /// `Best Selling`
  String get bestSelling {
    return Intl.message(
      'Best Selling',
      name: 'bestSelling',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message('More', name: 'more', desc: '', args: []);
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Cart`
  String get cart {
    return Intl.message('Cart', name: 'cart', desc: '', args: []);
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `Products`
  String get products {
    return Intl.message('Products', name: 'products', desc: '', args: []);
  }

  /// `Kg`
  String get kg {
    return Intl.message('Kg', name: 'kg', desc: '', args: []);
  }

  /// `Results`
  String get results {
    return Intl.message('Results', name: 'results', desc: '', args: []);
  }

  /// `No results found.`
  String get noResultsFound {
    return Intl.message(
      'No results found.',
      name: 'noResultsFound',
      desc: '',
      args: [],
    );
  }

  /// `An unknown error occurred.`
  String get anUnknownError {
    return Intl.message(
      'An unknown error occurred.',
      name: 'anUnknownError',
      desc: '',
      args: [],
    );
  }

  /// `An unexpected error occurred.`
  String get anUnexpectedError {
    return Intl.message(
      'An unexpected error occurred.',
      name: 'anUnexpectedError',
      desc: '',
      args: [],
    );
  }

  /// `The password provided is too weak.`
  String get tooWeakPassword {
    return Intl.message(
      'The password provided is too weak.',
      name: 'tooWeakPassword',
      desc: '',
      args: [],
    );
  }

  /// `The account already exists for that email.`
  String get emailAlreadyInUse {
    return Intl.message(
      'The account already exists for that email.',
      name: 'emailAlreadyInUse',
      desc: '',
      args: [],
    );
  }

  /// `The email address is badly formatted.`
  String get invalidEmail {
    return Intl.message(
      'The email address is badly formatted.',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `A network error (such as timeout, interrupted connection or unreachable host) has occurred.`
  String get networkRequestFailed {
    return Intl.message(
      'A network error (such as timeout, interrupted connection or unreachable host) has occurred.',
      name: 'networkRequestFailed',
      desc: '',
      args: [],
    );
  }

  /// `No user found for that email.`
  String get userNotFound {
    return Intl.message(
      'No user found for that email.',
      name: 'userNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Wrong password provided for that user.`
  String get wrongPassword {
    return Intl.message(
      'Wrong password provided for that user.',
      name: 'wrongPassword',
      desc: '',
      args: [],
    );
  }

  /// `The password or email is incorrect.`
  String get passwordOrEmailAreIncorrect {
    return Intl.message(
      'The password or email is incorrect.',
      name: 'passwordOrEmailAreIncorrect',
      desc: '',
      args: [],
    );
  }

  /// `An account already exists with a different credential.`
  String get accountExistsWithDifferentCredential {
    return Intl.message(
      'An account already exists with a different credential.',
      name: 'accountExistsWithDifferentCredential',
      desc: '',
      args: [],
    );
  }

  /// `The action code has expired. Please request a new one.`
  String get expiredActionCode {
    return Intl.message(
      'The action code has expired. Please request a new one.',
      name: 'expiredActionCode',
      desc: '',
      args: [],
    );
  }

  /// `The action code is invalid or has already been used.`
  String get invalidActionCode {
    return Intl.message(
      'The action code is invalid or has already been used.',
      name: 'invalidActionCode',
      desc: '',
      args: [],
    );
  }

  /// `This account has been disabled. Please contact support.`
  String get userDisabled {
    return Intl.message(
      'This account has been disabled. Please contact support.',
      name: 'userDisabled',
      desc: '',
      args: [],
    );
  }

  /// `This sign-in method is not enabled. Please contact support.`
  String get operationNotAllowed {
    return Intl.message(
      'This sign-in method is not enabled. Please contact support.',
      name: 'operationNotAllowed',
      desc: '',
      args: [],
    );
  }

  /// `The provided credentials are invalid or have expired. Please try again.`
  String get invalidCredential {
    return Intl.message(
      'The provided credentials are invalid or have expired. Please try again.',
      name: 'invalidCredential',
      desc: '',
      args: [],
    );
  }

  /// `The verification code is invalid. Please enter the correct code.`
  String get invalidVerificationCode {
    return Intl.message(
      'The verification code is invalid. Please enter the correct code.',
      name: 'invalidVerificationCode',
      desc: '',
      args: [],
    );
  }

  /// `The verification ID is invalid. Please request a new code.`
  String get invalidVerificationId {
    return Intl.message(
      'The verification ID is invalid. Please request a new code.',
      name: 'invalidVerificationId',
      desc: '',
      args: [],
    );
  }

  /// `The custom token does not match this Firebase project.`
  String get customTokenMismatch {
    return Intl.message(
      'The custom token does not match this Firebase project.',
      name: 'customTokenMismatch',
      desc: '',
      args: [],
    );
  }

  /// `The custom token format is invalid.`
  String get invalidCustomToken {
    return Intl.message(
      'The custom token format is invalid.',
      name: 'invalidCustomToken',
      desc: '',
      args: [],
    );
  }

  /// `Process Cancelled.`
  String get processAborted {
    return Intl.message(
      'Process Cancelled.',
      name: 'processAborted',
      desc: '',
      args: [],
    );
  }

  /// `Total Payment`
  String get totalPayment {
    return Intl.message(
      'Total Payment',
      name: 'totalPayment',
      desc: '',
      args: [],
    );
  }

  /// `Only`
  String get only {
    return Intl.message('Only', name: 'only', desc: '', args: []);
  }

  /// `Your cart is still empty`
  String get yourCartIsEmpty {
    return Intl.message(
      'Your cart is still empty',
      name: 'yourCartIsEmpty',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
