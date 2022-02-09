import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting.freezed.dart';

part 'setting.g.dart';

@freezed
class Setting with _$Setting {
  @JsonSerializable(explicitToJson: true)
  factory Setting({
    @JsonKey(name: 'enable_remind_contact')
    required bool enableRemindContact,
    @JsonKey(name: 'remind_contact_after_number')
    required int remindContactDayAfterNumber,
  }) = _Setting;

  factory Setting.fromJson(Map<String, dynamic> json) => _$SettingFromJson(json);
}
