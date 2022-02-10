// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a vi_VN locale. All the
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
  String get localeName => 'vi_VN';

  static String m0(count) =>
      "${Intl.plural(count, zero: '${count} ngày', other: '${count} ngày')}";

  static String m1(username) => "Chào ${username},";

  static String m2(count) =>
      "${Intl.plural(count, zero: 'Tuyệt vời, bạn đã không quên khách hàng của mình, hãy tiếp tục liên lạc với họ nhé!', other: 'Bạn có ${count} khách hàng cần liên hệ ngay')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "add_new_a_customer":
            MessageLookupByLibrary.simpleMessage("Thêm khách hàng mới"),
        "after": MessageLookupByLibrary.simpleMessage("Sau"),
        "app_name": MessageLookupByLibrary.simpleMessage("Chăm sóc khách hàng"),
        "blessing":
            MessageLookupByLibrary.simpleMessage("Chúc một ngày vui vẻ!"),
        "cancel": MessageLookupByLibrary.simpleMessage("Hủy"),
        "common_error": MessageLookupByLibrary.simpleMessage(
            "Đã có lỗi xảy ra. Vui lòng thử lại."),
        "contract_number": MessageLookupByLibrary.simpleMessage("Số hợp đồng"),
        "create": MessageLookupByLibrary.simpleMessage("Tạo"),
        "customer": MessageLookupByLibrary.simpleMessage("Khách hàng"),
        "customers":
            MessageLookupByLibrary.simpleMessage("Danh sách khách hàng"),
        "date_of_birth": MessageLookupByLibrary.simpleMessage("Ngày sinh"),
        "day": m0,
        "edit_customer_information":
            MessageLookupByLibrary.simpleMessage("Sửa thông tin khách hàng"),
        "fullname": MessageLookupByLibrary.simpleMessage("Họ và tên"),
        "hello": m1,
        "hobbies": MessageLookupByLibrary.simpleMessage("Sở thích"),
        "home": MessageLookupByLibrary.simpleMessage("Trang chủ\n"),
        "id_number": MessageLookupByLibrary.simpleMessage("CMNN/CCCD"),
        "last_contact_date":
            MessageLookupByLibrary.simpleMessage("Ngày liên lạc cuối cùng"),
        "make_phone_call_instruction": MessageLookupByLibrary.simpleMessage(
            "Tạo cuộc gọi bằng cách nhấp vào icon cuộc gọi bên cạnh khách hàng của bạn"),
        "ok": MessageLookupByLibrary.simpleMessage("Đồng ý"),
        "phone_number": MessageLookupByLibrary.simpleMessage("Số điện thoại"),
        "remind_contact_to_customer":
            MessageLookupByLibrary.simpleMessage("Liên lạc với khách hàng"),
        "remove_customer":
            MessageLookupByLibrary.simpleMessage("Xóa thông tin khách hàng"),
        "remove_customer_message": MessageLookupByLibrary.simpleMessage(
            "Bạn có chắc rằng muốn xóa khách hàng này?"),
        "required": MessageLookupByLibrary.simpleMessage("Bắt buộc *"),
        "save": MessageLookupByLibrary.simpleMessage("Lưu"),
        "setting": MessageLookupByLibrary.simpleMessage("Cài đặt"),
        "sign_in_with": MessageLookupByLibrary.simpleMessage("Đăng nhập bằng"),
        "sign_out": MessageLookupByLibrary.simpleMessage("Đăng Xuất"),
        "you_have_n_customer_need_to_contact_today": m2
      };
}
