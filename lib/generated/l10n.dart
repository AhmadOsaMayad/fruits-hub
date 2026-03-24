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

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message('Or', name: 'or', desc: '', args: []);
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
