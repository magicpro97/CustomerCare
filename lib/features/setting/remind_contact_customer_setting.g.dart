// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remind_contact_customer_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RemindContactCustomerSetting _$$_RemindContactCustomerSettingFromJson(
        Map<String, dynamic> json) =>
    _$_RemindContactCustomerSetting(
      enableRemindContact: json['enable_remind_contact'] as bool,
      remindContactDayAfterNumber: json['remind_contact_after_number'] as int,
    );

Map<String, dynamic> _$$_RemindContactCustomerSettingToJson(
        _$_RemindContactCustomerSetting instance) =>
    <String, dynamic>{
      'enable_remind_contact': instance.enableRemindContact,
      'remind_contact_after_number': instance.remindContactDayAfterNumber,
    };
