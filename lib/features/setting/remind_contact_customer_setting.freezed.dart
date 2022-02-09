// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'remind_contact_customer_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemindContactCustomerSetting _$RemindContactCustomerSettingFromJson(
    Map<String, dynamic> json) {
  return _RemindContactCustomerSetting.fromJson(json);
}

/// @nodoc
class _$RemindContactCustomerSettingTearOff {
  const _$RemindContactCustomerSettingTearOff();

  _RemindContactCustomerSetting call(
      {@JsonKey(name: 'enable_remind_contact')
          required bool enableRemindContact,
      @JsonKey(name: 'remind_contact_after_number')
          required int remindContactDayAfterNumber}) {
    return _RemindContactCustomerSetting(
      enableRemindContact: enableRemindContact,
      remindContactDayAfterNumber: remindContactDayAfterNumber,
    );
  }

  RemindContactCustomerSetting fromJson(Map<String, Object?> json) {
    return RemindContactCustomerSetting.fromJson(json);
  }
}

/// @nodoc
const $RemindContactCustomerSetting = _$RemindContactCustomerSettingTearOff();

/// @nodoc
mixin _$RemindContactCustomerSetting {
  @JsonKey(name: 'enable_remind_contact')
  bool get enableRemindContact => throw _privateConstructorUsedError;
  @JsonKey(name: 'remind_contact_after_number')
  int get remindContactDayAfterNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemindContactCustomerSettingCopyWith<RemindContactCustomerSetting>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemindContactCustomerSettingCopyWith<$Res> {
  factory $RemindContactCustomerSettingCopyWith(
          RemindContactCustomerSetting value,
          $Res Function(RemindContactCustomerSetting) then) =
      _$RemindContactCustomerSettingCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'enable_remind_contact')
          bool enableRemindContact,
      @JsonKey(name: 'remind_contact_after_number')
          int remindContactDayAfterNumber});
}

/// @nodoc
class _$RemindContactCustomerSettingCopyWithImpl<$Res>
    implements $RemindContactCustomerSettingCopyWith<$Res> {
  _$RemindContactCustomerSettingCopyWithImpl(this._value, this._then);

  final RemindContactCustomerSetting _value;
  // ignore: unused_field
  final $Res Function(RemindContactCustomerSetting) _then;

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
abstract class _$RemindContactCustomerSettingCopyWith<$Res>
    implements $RemindContactCustomerSettingCopyWith<$Res> {
  factory _$RemindContactCustomerSettingCopyWith(
          _RemindContactCustomerSetting value,
          $Res Function(_RemindContactCustomerSetting) then) =
      __$RemindContactCustomerSettingCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'enable_remind_contact')
          bool enableRemindContact,
      @JsonKey(name: 'remind_contact_after_number')
          int remindContactDayAfterNumber});
}

/// @nodoc
class __$RemindContactCustomerSettingCopyWithImpl<$Res>
    extends _$RemindContactCustomerSettingCopyWithImpl<$Res>
    implements _$RemindContactCustomerSettingCopyWith<$Res> {
  __$RemindContactCustomerSettingCopyWithImpl(
      _RemindContactCustomerSetting _value,
      $Res Function(_RemindContactCustomerSetting) _then)
      : super(_value, (v) => _then(v as _RemindContactCustomerSetting));

  @override
  _RemindContactCustomerSetting get _value =>
      super._value as _RemindContactCustomerSetting;

  @override
  $Res call({
    Object? enableRemindContact = freezed,
    Object? remindContactDayAfterNumber = freezed,
  }) {
    return _then(_RemindContactCustomerSetting(
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
class _$_RemindContactCustomerSetting implements _RemindContactCustomerSetting {
  _$_RemindContactCustomerSetting(
      {@JsonKey(name: 'enable_remind_contact')
          required this.enableRemindContact,
      @JsonKey(name: 'remind_contact_after_number')
          required this.remindContactDayAfterNumber});

  factory _$_RemindContactCustomerSetting.fromJson(Map<String, dynamic> json) =>
      _$$_RemindContactCustomerSettingFromJson(json);

  @override
  @JsonKey(name: 'enable_remind_contact')
  final bool enableRemindContact;
  @override
  @JsonKey(name: 'remind_contact_after_number')
  final int remindContactDayAfterNumber;

  @override
  String toString() {
    return 'RemindContactCustomerSetting(enableRemindContact: $enableRemindContact, remindContactDayAfterNumber: $remindContactDayAfterNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemindContactCustomerSetting &&
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
  _$RemindContactCustomerSettingCopyWith<_RemindContactCustomerSetting>
      get copyWith => __$RemindContactCustomerSettingCopyWithImpl<
          _RemindContactCustomerSetting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemindContactCustomerSettingToJson(this);
  }
}

abstract class _RemindContactCustomerSetting
    implements RemindContactCustomerSetting {
  factory _RemindContactCustomerSetting(
          {@JsonKey(name: 'enable_remind_contact')
              required bool enableRemindContact,
          @JsonKey(name: 'remind_contact_after_number')
              required int remindContactDayAfterNumber}) =
      _$_RemindContactCustomerSetting;

  factory _RemindContactCustomerSetting.fromJson(Map<String, dynamic> json) =
      _$_RemindContactCustomerSetting.fromJson;

  @override
  @JsonKey(name: 'enable_remind_contact')
  bool get enableRemindContact;
  @override
  @JsonKey(name: 'remind_contact_after_number')
  int get remindContactDayAfterNumber;
  @override
  @JsonKey(ignore: true)
  _$RemindContactCustomerSettingCopyWith<_RemindContactCustomerSetting>
      get copyWith => throw _privateConstructorUsedError;
}
