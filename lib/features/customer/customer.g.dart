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
      idNumber: json['id_number'] as String,
      dateOfBirth: DateTime.parse(json['date_of_birth'] as String),
      lastContactDate: DateTime.parse(json['last_contact_date'] as String),
    );

Map<String, dynamic> _$$_CustomerToJson(_$_Customer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'hobbies': instance.hobbies,
      'id_number': instance.idNumber,
      'date_of_birth': instance.dateOfBirth.toIso8601String(),
      'last_contact_date': instance.lastContactDate.toIso8601String(),
    };
