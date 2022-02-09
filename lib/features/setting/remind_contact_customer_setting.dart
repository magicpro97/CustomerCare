import 'package:freezed_annotation/freezed_annotation.dart';

part 'remind_contact_customer_setting.freezed.dart';

part 'remind_contact_customer_setting.g.dart';

@freezed
class RemindContactCustomerSetting with _$RemindContactCustomerSetting {
  @JsonSerializable(explicitToJson: true)
  factory RemindContactCustomerSetting({
    @JsonKey(name: 'enable_remind_contact')
    required bool enableRemindContact,
    @JsonKey(name: 'remind_contact_after_number')
    required int remindContactDayAfterNumber,
  }) = _RemindContactCustomerSetting;

  factory RemindContactCustomerSetting.fromJson(Map<String, dynamic> json) =>
      _$RemindContactCustomerSettingFromJson(json);
}