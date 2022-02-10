// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(count) =>
      "${Intl.plural(count, zero: 'day', one: '${count} day', other: '${count} days')}";

  static String m1(username) => "Hello ${username},";

  static String m2(count) =>
      "${Intl.plural(count, zero: 'Great, you don\'t miss any customer, keep going!', one: 'You have ${count} customer need to contact', other: 'You have ${count} customers need to contact')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "add_new_a_customer":
            MessageLookupByLibrary.simpleMessage("Add a new customer"),
        "after": MessageLookupByLibrary.simpleMessage("After"),
        "app_name": MessageLookupByLibrary.simpleMessage("Customer Care"),
        "blessing": MessageLookupByLibrary.simpleMessage("Have a good day!"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "common_error": MessageLookupByLibrary.simpleMessage(
            "Something when wrong. Please try again."),
        "contract_number":
            MessageLookupByLibrary.simpleMessage("Contract number"),
        "create": MessageLookupByLibrary.simpleMessage("Create"),
        "customer": MessageLookupByLibrary.simpleMessage("Customer"),
        "customers": MessageLookupByLibrary.simpleMessage("Customers"),
        "date_of_birth": MessageLookupByLibrary.simpleMessage("Date of birth"),
        "day": m0,
        "edit_customer_information": MessageLookupByLibrary.simpleMessage(
            "Edit customer\'s information"),
        "fullname": MessageLookupByLibrary.simpleMessage("Fullname"),
        "hello": m1,
        "hobbies": MessageLookupByLibrary.simpleMessage("Hobbies"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "id_number": MessageLookupByLibrary.simpleMessage("ID number"),
        "last_contact_date":
            MessageLookupByLibrary.simpleMessage("Last contact date"),
        "make_phone_call_instruction": MessageLookupByLibrary.simpleMessage(
            "To make a phone call to them by pressing phone icon next to customer\'s name"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "phone_number": MessageLookupByLibrary.simpleMessage("Phone number"),
        "remind_contact_to_customer":
            MessageLookupByLibrary.simpleMessage("Remind contact to customer"),
        "remove_customer":
            MessageLookupByLibrary.simpleMessage("Remove customer information"),
        "remove_customer_message": MessageLookupByLibrary.simpleMessage(
            "Do you want to remove this customer?"),
        "required":
            MessageLookupByLibrary.simpleMessage("Please input some text"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "setting": MessageLookupByLibrary.simpleMessage("Setting"),
        "sign_in_with": MessageLookupByLibrary.simpleMessage("Sign in with"),
        "sign_out": MessageLookupByLibrary.simpleMessage("Sign Out"),
        "you_have_n_customer_need_to_contact_today": m2
      };
}
