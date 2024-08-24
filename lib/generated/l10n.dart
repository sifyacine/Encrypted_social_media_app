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

  /// `Welcome!`
  String get loginTitle {
    return Intl.message(
      'Welcome!',
      name: 'loginTitle',
      desc: '',
      args: [],
    );
  }

  /// `protonmail address`
  String get email {
    return Intl.message(
      'protonmail address',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password?`
  String get forgetPassword {
    return Intl.message(
      'Forget Password?',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Not a member?`
  String get notAMember {
    return Intl.message(
      'Not a member?',
      name: 'notAMember',
      desc: '',
      args: [],
    );
  }

  /// `Register Now`
  String get registerNow {
    return Intl.message(
      'Register Now',
      name: 'registerNow',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Lucas`
  String get exampleName {
    return Intl.message(
      'Lucas',
      name: 'exampleName',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signUp {
    return Intl.message(
      'Sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Create an account to get started`
  String get signupTitle {
    return Intl.message(
      'Create an account to get started',
      name: 'signupTitle',
      desc: '',
      args: [],
    );
  }

  /// `Create a password`
  String get passwordField {
    return Intl.message(
      'Create a password',
      name: 'passwordField',
      desc: '',
      args: [],
    );
  }

  /// `name@protonmail.com`
  String get protonmailField {
    return Intl.message(
      'name@protonmail.com',
      name: 'protonmailField',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirmPasswordField {
    return Intl.message(
      'Confirm password',
      name: 'confirmPasswordField',
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

  /// `I've read and agree with the`
  String get iAgreeTo {
    return Intl.message(
      'I\'ve read and agree with the',
      name: 'iAgreeTo',
      desc: '',
      args: [],
    );
  }

  /// `Terns and conditions`
  String get termsOfUse {
    return Intl.message(
      'Terns and conditions',
      name: 'termsOfUse',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `and the`
  String get and {
    return Intl.message(
      'and the',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `Enter confirmation code`
  String get confirmationCodeTitle {
    return Intl.message(
      'Enter confirmation code',
      name: 'confirmationCodeTitle',
      desc: '',
      args: [],
    );
  }

  /// `A 4 digit code is sent to`
  String get confirmationCodeSubTitle {
    return Intl.message(
      'A 4 digit code is sent to',
      name: 'confirmationCodeSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get resend {
    return Intl.message(
      'Resend',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Friends`
  String get tabFriends {
    return Intl.message(
      'Friends',
      name: 'tabFriends',
      desc: '',
      args: [],
    );
  }

  /// `Edit profile`
  String get tabEditProfile {
    return Intl.message(
      'Edit profile',
      name: 'tabEditProfile',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get tabMessages {
    return Intl.message(
      'Messages',
      name: 'tabMessages',
      desc: '',
      args: [],
    );
  }

  /// `Search in your friends list`
  String get search {
    return Intl.message(
      'Search in your friends list',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Search @userName`
  String get searchBar {
    return Intl.message(
      'Search @userName',
      name: 'searchBar',
      desc: '',
      args: [],
    );
  }

  /// `You have no fiends`
  String get noFriends {
    return Intl.message(
      'You have no fiends',
      name: 'noFriends',
      desc: '',
      args: [],
    );
  }

  /// `Edit username`
  String get editUsername {
    return Intl.message(
      'Edit username',
      name: 'editUsername',
      desc: '',
      args: [],
    );
  }

  /// `profile picture`
  String get profilePicture {
    return Intl.message(
      'profile picture',
      name: 'profilePicture',
      desc: '',
      args: [],
    );
  }

  /// `Edit password`
  String get editPassword {
    return Intl.message(
      'Edit password',
      name: 'editPassword',
      desc: '',
      args: [],
    );
  }

  /// `Other additions`
  String get otherAdditions {
    return Intl.message(
      'Other additions',
      name: 'otherAdditions',
      desc: '',
      args: [],
    );
  }

  /// `Current situation`
  String get CurrentSituation {
    return Intl.message(
      'Current situation',
      name: 'CurrentSituation',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `check your IP address`
  String get ipCheck {
    return Intl.message(
      'check your IP address',
      name: 'ipCheck',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '2FA' key
  String get twoFA {
    return Intl.message(
      'two factor authentication',
      name: 'twoFA',
      desc: '',
      args: [],
    );
  }

  /// `Auto delete messages`
  String get autoDeleteMsgs {
    return Intl.message(
      'Auto delete messages',
      name: 'autoDeleteMsgs',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get freeMode {
    return Intl.message(
      'Messages',
      name: 'freeMode',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get vipMode {
    return Intl.message(
      'Messages',
      name: 'vipMode',
      desc: '',
      args: [],
    );
  }

  /// `Regular features`
  String get regularFeatures {
    return Intl.message(
      'Regular features',
      name: 'regularFeatures',
      desc: '',
      args: [],
    );
  }

  /// `Encrypted all data`
  String get encryptedAllData {
    return Intl.message(
      'Encrypted all data',
      name: 'encryptedAllData',
      desc: '',
      args: [],
    );
  }

  /// `Free`
  String get free {
    return Intl.message(
      'Free',
      name: 'free',
      desc: '',
      args: [],
    );
  }

  /// `More features`
  String get moreFeatures {
    return Intl.message(
      'More features',
      name: 'moreFeatures',
      desc: '',
      args: [],
    );
  }

  /// `Fast Response`
  String get fastResponse {
    return Intl.message(
      'Fast Response',
      name: 'fastResponse',
      desc: '',
      args: [],
    );
  }

  /// `Starting at 30$`
  String get vipPrice {
    return Intl.message(
      'Starting at 30\$',
      name: 'vipPrice',
      desc: '',
      args: [],
    );
  }

  /// `Get it now`
  String get vipButton {
    return Intl.message(
      'Get it now',
      name: 'vipButton',
      desc: '',
      args: [],
    );
  }

  /// `ON`
  String get freeButton {
    return Intl.message(
      'ON',
      name: 'freeButton',
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
