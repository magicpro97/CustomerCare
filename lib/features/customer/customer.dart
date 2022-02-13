import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer.freezed.dart';

part 'customer.g.dart';

@freezed
class Customer with _$Customer {
  @JsonSerializable(explicitToJson: true)
  factory Customer({
    required String id,
    required String name,
    required String phone,
    String? hobbies,
    @JsonKey(name: 'id_card_front_url') String? idCardFrontUrl,
    @JsonKey(name: 'id_card_back_url') String? idCardBackUrl,
    @JsonKey(name: 'tag_color',
        fromJson: fromHex,
        toJson: toHex) Color? tagColor,
    @JsonKey(name: 'date_of_birth') required DateTime dateOfBirth,
    @JsonKey(name: 'last_contact_date') required DateTime lastContactDate,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}

Color? fromHex(String? hexString) {
  if (hexString == null) return null;
  final buffer = StringBuffer();
  if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
  buffer.write(hexString.replaceFirst('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}

String toHex(Color? color) => color == null ? '#fff' : '#'
    '${color.alpha.toRadixString(16).padLeft(2, '0')}'
    '${color.red.toRadixString(16).padLeft(2, '0')}'
    '${color.green.toRadixString(16).padLeft(2, '0')}'
    '${color.blue.toRadixString(16).padLeft(2, '0')}';