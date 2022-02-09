// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Setting _$$_SettingFromJson(Map<String, dynamic> json) => _$_Setting(
      enableRemindContact: json['enable_remind_contact'] as bool,
      remindContactDayAfterNumber: json['remind_contact_after_number'] as int,
    );

Map<String, dynamic> _$$_SettingToJson(_$_Setting instance) =>
    <String, dynamic>{
      'enable_remind_contact': instance.enableRemindContact,
      'remind_contact_after_number': instance.remindContactDayAfterNumber,
    };
