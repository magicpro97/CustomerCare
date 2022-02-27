// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'remind_birthday_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemindBirthdaySetting _$RemindBirthdaySettingFromJson(
    Map<String, dynamic> json) {
  return _RemindBirthdaySetting.fromJson(json);
}

/// @nodoc
class _$RemindBirthdaySettingTearOff {
  const _$RemindBirthdaySettingTearOff();

  _RemindBirthdaySetting call({required bool enable, required DateTime at}) {
    return _RemindBirthdaySetting(
      enable: enable,
      at: at,
    );
  }

  RemindBirthdaySetting fromJson(Map<String, Object?> json) {
    return RemindBirthdaySetting.fromJson(json);
  }
}

/// @nodoc
const $RemindBirthdaySetting = _$RemindBirthdaySettingTearOff();

/// @nodoc
mixin _$RemindBirthdaySetting {
  bool get enable => throw _privateConstructorUsedError;

  DateTime get at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemindBirthdaySettingCopyWith<RemindBirthdaySetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemindBirthdaySettingCopyWith<$Res> {
  factory $RemindBirthdaySettingCopyWith(RemindBirthdaySetting value,
          $Res Function(RemindBirthdaySetting) then) =
      _$RemindBirthdaySettingCopyWithImpl<$Res>;

  $Res call({bool enable, DateTime at});
}

/// @nodoc
class _$RemindBirthdaySettingCopyWithImpl<$Res>
    implements $RemindBirthdaySettingCopyWith<$Res> {
  _$RemindBirthdaySettingCopyWithImpl(this._value, this._then);

  final RemindBirthdaySetting _value;

  // ignore: unused_field
  final $Res Function(RemindBirthdaySetting) _then;

  @override
  $Res call({
    Object? enable = freezed,
    Object? at = freezed,
  }) {
    return _then(_value.copyWith(
      enable: enable == freezed
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      at: at == freezed
          ? _value.at
          : at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$RemindBirthdaySettingCopyWith<$Res>
    implements $RemindBirthdaySettingCopyWith<$Res> {
  factory _$RemindBirthdaySettingCopyWith(_RemindBirthdaySetting value,
          $Res Function(_RemindBirthdaySetting) then) =
      __$RemindBirthdaySettingCopyWithImpl<$Res>;

  @override
  $Res call({bool enable, DateTime at});
}

/// @nodoc
class __$RemindBirthdaySettingCopyWithImpl<$Res>
    extends _$RemindBirthdaySettingCopyWithImpl<$Res>
    implements _$RemindBirthdaySettingCopyWith<$Res> {
  __$RemindBirthdaySettingCopyWithImpl(_RemindBirthdaySetting _value,
      $Res Function(_RemindBirthdaySetting) _then)
      : super(_value, (v) => _then(v as _RemindBirthdaySetting));

  @override
  _RemindBirthdaySetting get _value => super._value as _RemindBirthdaySetting;

  @override
  $Res call({
    Object? enable = freezed,
    Object? at = freezed,
  }) {
    return _then(_RemindBirthdaySetting(
      enable: enable == freezed
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      at: at == freezed
          ? _value.at
          : at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RemindBirthdaySetting implements _RemindBirthdaySetting {
  _$_RemindBirthdaySetting({required this.enable, required this.at});

  factory _$_RemindBirthdaySetting.fromJson(Map<String, dynamic> json) =>
      _$$_RemindBirthdaySettingFromJson(json);

  @override
  final bool enable;
  @override
  final DateTime at;

  @override
  String toString() {
    return 'RemindBirthdaySetting(enable: $enable, at: $at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemindBirthdaySetting &&
            const DeepCollectionEquality().equals(other.enable, enable) &&
            const DeepCollectionEquality().equals(other.at, at));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(enable),
      const DeepCollectionEquality().hash(at));

  @JsonKey(ignore: true)
  @override
  _$RemindBirthdaySettingCopyWith<_RemindBirthdaySetting> get copyWith =>
      __$RemindBirthdaySettingCopyWithImpl<_RemindBirthdaySetting>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemindBirthdaySettingToJson(this);
  }
}

abstract class _RemindBirthdaySetting implements RemindBirthdaySetting {
  factory _RemindBirthdaySetting({required bool enable, required DateTime at}) =
      _$_RemindBirthdaySetting;

  factory _RemindBirthdaySetting.fromJson(Map<String, dynamic> json) =
      _$_RemindBirthdaySetting.fromJson;

  @override
  bool get enable;

  @override
  DateTime get at;

  @override
  @JsonKey(ignore: true)
  _$RemindBirthdaySettingCopyWith<_RemindBirthdaySetting> get copyWith =>
      throw _privateConstructorUsedError;
}
