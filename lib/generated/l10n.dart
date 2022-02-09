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

  /// `Add a new customer`
  String get add_new_a_customer {
    return Intl.message(
      'Add a new customer',
      name: 'add_new_a_customer',
      desc: '',
      args: [],
    );
  }

  /// `After`
  String get after {
    return Intl.message(
      'After',
      name: 'after',
      desc: '',
      args: [],
    );
  }

  /// `Customer Care`
  String get app_name {
    return Intl.message(
      'Customer Care',
      name: 'app_name',
      desc: 'App\'s name',
      args: [],
    );
  }

  /// `Have a good day!`
  String get blessing {
    return Intl.message(
      'Have a good day!',
      name: 'blessing',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Something when wrong. Please try again.`
  String get common_error {
    return Intl.message(
      'Something when wrong. Please try again.',
      name: 'common_error',
      desc: '',
      args: [],
    );
  }

  /// `Contract number`
  String get contract_number {
    return Intl.message(
      'Contract number',
      name: 'contract_number',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get create {
    return Intl.message(
      'Create',
      name: 'create',
      desc: '',
      args: [],
    );
  }

  /// `Customer`
  String get customer {
    return Intl.message(
      'Customer',
      name: 'customer',
      desc: '',
      args: [],
    );
  }

  /// `Customers`
  String get customers {
    return Intl.message(
      'Customers',
      name: 'customers',
      desc: '',
      args: [],
    );
  }

  /// `Date of birth`
  String get date_of_birth {
    return Intl.message(
      'Date of birth',
      name: 'date_of_birth',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, zero{day} one{{count} day} other{{count} days}}`
  String day(num count) {
    return Intl.plural(
      count,
      zero: 'day',
      one: '$count day',
      other: '$count days',
      name: 'day',
      desc: '',
      args: [count],
    );
  }

  /// `Edit customer's information`
  String get edit_customer_information {
    return Intl.message(
      'Edit customer\'s information',
      name: 'edit_customer_information',
      desc: '',
      args: [],
    );
  }

  /// `Fullname`
  String get fullname {
    return Intl.message(
      'Fullname',
      name: 'fullname',
      desc: '',
      args: [],
    );
  }

  /// `Hello {username},`
  String hello(Object username) {
    return Intl.message(
      'Hello $username,',
      name: 'hello',
      desc: 'Message for greeting user',
      args: [username],
    );
  }

  /// `Hobbies`
  String get hobbies {
    return Intl.message(
      'Hobbies',
      name: 'hobbies',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `ID number`
  String get id_number {
    return Intl.message(
      'ID number',
      name: 'id_number',
      desc: '',
      args: [],
    );
  }

  /// `Last contact date`
  String get last_contact_date {
    return Intl.message(
      'Last contact date',
      name: 'last_contact_date',
      desc: '',
      args: [],
    );
  }

  /// `To make a phone call to them by pressing phone icon next to customer's name`
  String get make_phone_call_instruction {
    return Intl.message(
      'To make a phone call to them by pressing phone icon next to customer\'s name',
      name: 'make_phone_call_instruction',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phone_number {
    return Intl.message(
      'Phone number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Remind contact to customer`
  String get remind_contact_to_customer {
    return Intl.message(
      'Remind contact to customer',
      name: 'remind_contact_to_customer',
      desc: '',
      args: [],
    );
  }

  /// `Remove customer information`
  String get remove_customer {
    return Intl.message(
      'Remove customer information',
      name: 'remove_customer',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to remove this customer?`
  String get remove_customer_message {
    return Intl.message(
      'Do you want to remove this customer?',
      name: 'remove_customer_message',
      desc: '',
      args: [],
    );
  }

  /// `Please input some text`
  String get required {
    return Intl.message(
      'Please input some text',
      name: 'required',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get setting {
    return Intl.message(
      'Setting',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with`
  String get sign_in_with {
    return Intl.message(
      'Sign in with',
      name: 'sign_in_with',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, zero{Great, you don't miss any customer, keep going!} one{You have {count} customer need to contact} other{You have {count} customers need to contact}}`
  String you_have_n_customer_need_to_contact_today(num count) {
    return Intl.plural(
      count,
      zero: 'Great, you don\'t miss any customer, keep going!',
      one: 'You have $count customer need to contact',
      other: 'You have $count customers need to contact',
      name: 'you_have_n_customer_need_to_contact_today',
      desc: '',
      args: [count],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi', countryCode: 'VN'),
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
