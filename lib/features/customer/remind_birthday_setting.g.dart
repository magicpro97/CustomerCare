// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remind_birthday_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RemindBirthdaySetting _$$_RemindBirthdaySettingFromJson(
        Map<String, dynamic> json) =>
    _$_RemindBirthdaySetting(
      enable: json['enable'] as bool,
      at: DateTime.parse(json['at'] as String),
    );

Map<String, dynamic> _$$_RemindBirthdaySettingToJson(
        _$_RemindBirthdaySetting instance) =>
    <String, dynamic>{
      'enable': instance.enable,
      'at': instance.at.toIso8601String(),
    };
