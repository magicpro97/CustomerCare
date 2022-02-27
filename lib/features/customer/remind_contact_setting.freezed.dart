// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'remind_contact_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemindContactSetting _$RemindContactSettingFromJson(Map<String, dynamic> json) {
  return _RemindContactSetting.fromJson(json);
}

/// @nodoc
class _$RemindContactSettingTearOff {
  const _$RemindContactSettingTearOff();

  _RemindContactSetting call({required bool enable, required int dayAfter}) {
    return _RemindContactSetting(
      enable: enable,
      dayAfter: dayAfter,
    );
  }

  RemindContactSetting fromJson(Map<String, Object?> json) {
    return RemindContactSetting.fromJson(json);
  }
}

/// @nodoc
const $RemindContactSetting = _$RemindContactSettingTearOff();

/// @nodoc
mixin _$RemindContactSetting {
  bool get enable => throw _privateConstructorUsedError;

  int get dayAfter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemindContactSettingCopyWith<RemindContactSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemindContactSettingCopyWith<$Res> {
  factory $RemindContactSettingCopyWith(RemindContactSetting value,
          $Res Function(RemindContactSetting) then) =
      _$RemindContactSettingCopyWithImpl<$Res>;

  $Res call({bool enable, int dayAfter});
}

/// @nodoc
class _$RemindContactSettingCopyWithImpl<$Res>
    implements $RemindContactSettingCopyWith<$Res> {
  _$RemindContactSettingCopyWithImpl(this._value, this._then);

  final RemindContactSetting _value;

  // ignore: unused_field
  final $Res Function(RemindContactSetting) _then;

  @override
  $Res call({
    Object? enable = freezed,
    Object? dayAfter = freezed,
  }) {
    return _then(_value.copyWith(
      enable: enable == freezed
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      dayAfter: dayAfter == freezed
          ? _value.dayAfter
          : dayAfter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RemindContactSettingCopyWith<$Res>
    implements $RemindContactSettingCopyWith<$Res> {
  factory _$RemindContactSettingCopyWith(_RemindContactSetting value,
          $Res Function(_RemindContactSetting) then) =
      __$RemindContactSettingCopyWithImpl<$Res>;

  @override
  $Res call({bool enable, int dayAfter});
}

/// @nodoc
class __$RemindContactSettingCopyWithImpl<$Res>
    extends _$RemindContactSettingCopyWithImpl<$Res>
    implements _$RemindContactSettingCopyWith<$Res> {
  __$RemindContactSettingCopyWithImpl(
      _RemindContactSetting _value, $Res Function(_RemindContactSetting) _then)
      : super(_value, (v) => _then(v as _RemindContactSetting));

  @override
  _RemindContactSetting get _value => super._value as _RemindContactSetting;

  @override
  $Res call({
    Object? enable = freezed,
    Object? dayAfter = freezed,
  }) {
    return _then(_RemindContactSetting(
      enable: enable == freezed
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      dayAfter: dayAfter == freezed
          ? _value.dayAfter
          : dayAfter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RemindContactSetting implements _RemindContactSetting {
  _$_RemindContactSetting({required this.enable, required this.dayAfter});

  factory _$_RemindContactSetting.fromJson(Map<String, dynamic> json) =>
      _$$_RemindContactSettingFromJson(json);

  @override
  final bool enable;
  @override
  final int dayAfter;

  @override
  String toString() {
    return 'RemindContactSetting(enable: $enable, dayAfter: $dayAfter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemindContactSetting &&
            const DeepCollectionEquality().equals(other.enable, enable) &&
            const DeepCollectionEquality().equals(other.dayAfter, dayAfter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(enable),
      const DeepCollectionEquality().hash(dayAfter));

  @JsonKey(ignore: true)
  @override
  _$RemindContactSettingCopyWith<_RemindContactSetting> get copyWith =>
      __$RemindContactSettingCopyWithImpl<_RemindContactSetting>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemindContactSettingToJson(this);
  }
}

abstract class _RemindContactSetting implements RemindContactSetting {
  factory _RemindContactSetting({required bool enable, required int dayAfter}) =
      _$_RemindContactSetting;

  factory _RemindContactSetting.fromJson(Map<String, dynamic> json) =
      _$_RemindContactSetting.fromJson;

  @override
  bool get enable;

  @override
  int get dayAfter;

  @override
  @JsonKey(ignore: true)
  _$RemindContactSettingCopyWith<_RemindContactSetting> get copyWith =>
      throw _privateConstructorUsedError;
}
