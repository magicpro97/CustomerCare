import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_input.freezed.dart';

@freezed
class CustomerInput with _$CustomerInput {
  factory CustomerInput({
    String? id,
    required String fullname,
    required DateTime dateOfBirth,
    required String phone,
    String? hobbies,
    required DateTime lastContactDate,
    Color? tagColor,
    String? email,
    String? emailPassword,
    String? idCardFrontSideUrl,
    String? idCardBackSideUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _CustomerInput;
}
