import 'package:freezed_annotation/freezed_annotation.dart';

part 'remind_birthday_setting.freezed.dart';

part 'remind_birthday_setting.g.dart';

@freezed
class RemindBirthdaySetting with _$RemindBirthdaySetting {
  factory RemindBirthdaySetting({
    required bool enable,
    required DateTime at,
  }) = _RemindBirthdaySetting;

  factory RemindBirthdaySetting.fromJson(Map<String, dynamic> json) =>
      _$RemindBirthdaySettingFromJson(json);
}
