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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  String get email {
    return Intl.message(
      'protonmail address',
      name: 'email',
      desc: '',
      args: [],
    );
  }
  String get loginTitle {
    return Intl.message(
      'Welcome!',
      name: 'loginTitle',
      desc: '',
      args: [],
    );
  }

  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  String get forgetPassword {
    return Intl.message(
      'Forget Password?',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  String get notAMember {
    return Intl.message(
      'Not a member?',
      name: 'notAMember',
      desc: '',
      args: [],
    );
  }

  String get registerNow {
    return Intl.message(
      'Register Now',
      name: 'registerNow',
      desc: '',
      args: [],
    );
  }
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  String get exampleName {
    return Intl.message(
      'Lucas',
      name: 'exampleName',
      desc: '',
      args: [],
    );
  }

  String get signUp {
    return Intl.message(
      'Sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  String get signupTitle {
    return Intl.message(
      'Create an account to get started',
      name: 'signupTitle',
      desc: '',
      args: [],
    );
  }

  String get passwordField {
    return Intl.message(
      'Create a password',
      name: 'passwordField',
      desc: '',
      args: [],
    );
  }

  String get protonmailField {
    return Intl.message(
      'name@protonmail.com',
      name: 'protonmailField',
      desc: '',
      args: [],
    );
  }

  String get confirmPasswordField {
    return Intl.message(
      'Confirm password',
      name: 'confirmPasswordField',
      desc: '',
      args: [],
    );
  }

  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  String get iAgreeTo {
    return Intl.message(
      "I've read and agree with the",
      name: 'iAgreeTo',
      desc: '',
      args: [],
    );
  }

  String get termsOfUse {
    return Intl.message(
      'Terns and conditions',
      name: 'termsOfUse',
      desc: '',
      args: [],
    );
  }

  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  String get and {
    return Intl.message(
      'and the',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  String get confirmPassword {
    return Intl.message(
      'confirm password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }String get resend {
    return Intl.message(
      'Resend',
      name: 'resend',
      desc: '',
      args: [],
    );
  }String get confirmationCodeSubTitle {
    return Intl.message(
      'A 4 digit code is sent to',
      name: 'confirmationCodeSubTitle',
      desc: '',
      args: [],
    );
  }String get confirmationCodeTitle {
    return Intl.message(
      'Enter confirmation code',
      name: 'confirmationCodeTitle',
      desc: '',
      args: [],
    );
  }



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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
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
