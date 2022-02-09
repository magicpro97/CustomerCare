// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Setting _$SettingFromJson(Map<String, dynamic> json) {
  return _Setting.fromJson(json);
}

/// @nodoc
class _$SettingTearOff {
  const _$SettingTearOff();

  _Setting call(
      {@JsonKey(name: 'enable_remind_contact')
          required bool enableRemindContact,
      @JsonKey(name: 'remind_contact_after_number')
          required int remindContactDayAfterNumber}) {
    return _Setting(
      enableRemindContact: enableRemindContact,
      remindContactDayAfterNumber: remindContactDayAfterNumber,
    );
  }

  Setting fromJson(Map<String, Object?> json) {
    return Setting.fromJson(json);
  }
}

/// @nodoc
const $Setting = _$SettingTearOff();

/// @nodoc
mixin _$Setting {
  @JsonKey(name: 'enable_remind_contact')
  bool get enableRemindContact => throw _privateConstructorUsedError;
  @JsonKey(name: 'remind_contact_after_number')
  int get remindContactDayAfterNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingCopyWith<Setting> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingCopyWith<$Res> {
  factory $SettingCopyWith(Setting value, $Res Function(Setting) then) =
      _$SettingCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'enable_remind_contact')
          bool enableRemindContact,
      @JsonKey(name: 'remind_contact_after_number')
          int remindContactDayAfterNumber});
}

/// @nodoc
class _$SettingCopyWithImpl<$Res> implements $SettingCopyWith<$Res> {
  _$SettingCopyWithImpl(this._value, this._then);

  final Setting _value;
  // ignore: unused_field
  final $Res Function(Setting) _then;

  @override
  $Res call({
    Object? enableRemindContact = freezed,
    Object? remindContactDayAfterNumber = freezed,
  }) {
    return _then(_value.copyWith(
      enableRemindContact: enableRemindContact == freezed
          ? _value.enableRemindContact
          : enableRemindContact // ignore: cast_nullable_to_non_nullable
              as bool,
      remindContactDayAfterNumber: remindContactDayAfterNumber == freezed
          ? _value.remindContactDayAfterNumber
          : remindContactDayAfterNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SettingCopyWith<$Res> implements $SettingCopyWith<$Res> {
  factory _$SettingCopyWith(_Setting value, $Res Function(_Setting) then) =
      __$SettingCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'enable_remind_contact')
          bool enableRemindContact,
      @JsonKey(name: 'remind_contact_after_number')
          int remindContactDayAfterNumber});
}

/// @nodoc
class __$SettingCopyWithImpl<$Res> extends _$SettingCopyWithImpl<$Res>
    implements _$SettingCopyWith<$Res> {
  __$SettingCopyWithImpl(_Setting _value, $Res Function(_Setting) _then)
      : super(_value, (v) => _then(v as _Setting));

  @override
  _Setting get _value => super._value as _Setting;

  @override
  $Res call({
    Object? enableRemindContact = freezed,
    Object? remindContactDayAfterNumber = freezed,
  }) {
    return _then(_Setting(
      enableRemindContact: enableRemindContact == freezed
          ? _value.enableRemindContact
          : enableRemindContact // ignore: cast_nullable_to_non_nullable
              as bool,
      remindContactDayAfterNumber: remindContactDayAfterNumber == freezed
          ? _value.remindContactDayAfterNumber
          : remindContactDayAfterNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Setting implements _Setting {
  _$_Setting(
      {@JsonKey(name: 'enable_remind_contact')
          required this.enableRemindContact,
      @JsonKey(name: 'remind_contact_after_number')
          required this.remindContactDayAfterNumber});

  factory _$_Setting.fromJson(Map<String, dynamic> json) =>
      _$$_SettingFromJson(json);

  @override
  @JsonKey(name: 'enable_remind_contact')
  final bool enableRemindContact;
  @override
  @JsonKey(name: 'remind_contact_after_number')
  final int remindContactDayAfterNumber;

  @override
  String toString() {
    return 'Setting(enableRemindContact: $enableRemindContact, remindContactDayAfterNumber: $remindContactDayAfterNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Setting &&
            const DeepCollectionEquality()
                .equals(other.enableRemindContact, enableRemindContact) &&
            const DeepCollectionEquality().equals(
                other.remindContactDayAfterNumber,
                remindContactDayAfterNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(enableRemindContact),
      const DeepCollectionEquality().hash(remindContactDayAfterNumber));

  @JsonKey(ignore: true)
  @override
  _$SettingCopyWith<_Setting> get copyWith =>
      __$SettingCopyWithImpl<_Setting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingToJson(this);
  }
}

abstract class _Setting implements Setting {
  factory _Setting(
      {@JsonKey(name: 'enable_remind_contact')
          required bool enableRemindContact,
      @JsonKey(name: 'remind_contact_after_number')
          required int remindContactDayAfterNumber}) = _$_Setting;

  factory _Setting.fromJson(Map<String, dynamic> json) = _$_Setting.fromJson;

  @override
  @JsonKey(name: 'enable_remind_contact')
  bool get enableRemindContact;
  @override
  @JsonKey(name: 'remind_contact_after_number')
  int get remindContactDayAfterNumber;
  @override
  @JsonKey(ignore: true)
  _$SettingCopyWith<_Setting> get copyWith =>
      throw _privateConstructorUsedError;
}
