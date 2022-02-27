import 'package:freezed_annotation/freezed_annotation.dart';

part 'remind_contact_setting.freezed.dart';

part 'remind_contact_setting.g.dart';

@freezed
class RemindContactSetting with _$RemindContactSetting {
  factory RemindContactSetting({
    required bool enable,
    required int dayAfter,
  }) = _RemindContactSetting;

  factory RemindContactSetting.fromJson(Map<String, dynamic> json) =>
      _$RemindContactSettingFromJson(json);
}
