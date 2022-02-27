// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Customer _$$_CustomerFromJson(Map<String, dynamic> json) => _$_Customer(
      id: json['id'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      hobbies: json['hobbies'] as String?,
      idCardFrontSideUrl: json['id_card_front_side_url'] as String?,
      idCardBackSideUrl: json['id_card_back_side_url'] as String?,
      email: json['email'] as String?,
      emailPassword: json['email_password'] as String?,
      tagColor: fromHex(json['tag_color'] as String),
      dateOfBirth: DateTime.parse(json['date_of_birth'] as String),
      lastContactDate: DateTime.parse(json['last_contact_date'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      remindContactSetting: RemindContactSetting.fromJson(
          json['remind_contact_setting'] as Map<String, dynamic>),
      remindBirthdaySetting: RemindBirthdaySetting.fromJson(
          json['remind_birthday_setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CustomerToJson(_$_Customer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'hobbies': instance.hobbies,
      'id_card_front_side_url': instance.idCardFrontSideUrl,
      'id_card_back_side_url': instance.idCardBackSideUrl,
      'email': instance.email,
      'email_password': instance.emailPassword,
      'tag_color': toHex(instance.tagColor),
      'date_of_birth': instance.dateOfBirth.toIso8601String(),
      'last_contact_date': instance.lastContactDate.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'remind_contact_setting': instance.remindContactSetting.toJson(),
      'remind_birthday_setting': instance.remindBirthdaySetting.toJson(),
    };
