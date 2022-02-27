// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_contact_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CustomerContactItemTearOff {
  const _$CustomerContactItemTearOff();

  _CustomerContactItem call(
      {required String name,
      required String phone,
      required DateTime lastContactDate,
      Color? tagColor}) {
    return _CustomerContactItem(
      name: name,
      phone: phone,
      lastContactDate: lastContactDate,
      tagColor: tagColor,
    );
  }
}

/// @nodoc
const $CustomerContactItem = _$CustomerContactItemTearOff();

/// @nodoc
mixin _$CustomerContactItem {
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  DateTime get lastContactDate => throw _privateConstructorUsedError;
  Color? get tagColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerContactItemCopyWith<CustomerContactItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerContactItemCopyWith<$Res> {
  factory $CustomerContactItemCopyWith(
          CustomerContactItem value, $Res Function(CustomerContactItem) then) =
      _$CustomerContactItemCopyWithImpl<$Res>;
  $Res call(
      {String name, String phone, DateTime lastContactDate, Color? tagColor});
}

/// @nodoc
class _$CustomerContactItemCopyWithImpl<$Res>
    implements $CustomerContactItemCopyWith<$Res> {
  _$CustomerContactItemCopyWithImpl(this._value, this._then);

  final CustomerContactItem _value;
  // ignore: unused_field
  final $Res Function(CustomerContactItem) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? lastContactDate = freezed,
    Object? tagColor = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      lastContactDate: lastContactDate == freezed
          ? _value.lastContactDate
          : lastContactDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tagColor: tagColor == freezed
          ? _value.tagColor
          : tagColor // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc
abstract class _$CustomerContactItemCopyWith<$Res>
    implements $CustomerContactItemCopyWith<$Res> {
  factory _$CustomerContactItemCopyWith(_CustomerContactItem value,
          $Res Function(_CustomerContactItem) then) =
      __$CustomerContactItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name, String phone, DateTime lastContactDate, Color? tagColor});
}

/// @nodoc
class __$CustomerContactItemCopyWithImpl<$Res>
    extends _$CustomerContactItemCopyWithImpl<$Res>
    implements _$CustomerContactItemCopyWith<$Res> {
  __$CustomerContactItemCopyWithImpl(
      _CustomerContactItem _value, $Res Function(_CustomerContactItem) _then)
      : super(_value, (v) => _then(v as _CustomerContactItem));

  @override
  _CustomerContactItem get _value => super._value as _CustomerContactItem;

  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? lastContactDate = freezed,
    Object? tagColor = freezed,
  }) {
    return _then(_CustomerContactItem(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      lastContactDate: lastContactDate == freezed
          ? _value.lastContactDate
          : lastContactDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tagColor: tagColor == freezed
          ? _value.tagColor
          : tagColor // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$_CustomerContactItem implements _CustomerContactItem {
  _$_CustomerContactItem(
      {required this.name,
      required this.phone,
      required this.lastContactDate,
      this.tagColor});

  @override
  final String name;
  @override
  final String phone;
  @override
  final DateTime lastContactDate;
  @override
  final Color? tagColor;

  @override
  String toString() {
    return 'CustomerContactItem(name: $name, phone: $phone, lastContactDate: $lastContactDate, tagColor: $tagColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerContactItem &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality()
                .equals(other.lastContactDate, lastContactDate) &&
            const DeepCollectionEquality().equals(other.tagColor, tagColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(lastContactDate),
      const DeepCollectionEquality().hash(tagColor));

  @JsonKey(ignore: true)
  @override
  _$CustomerContactItemCopyWith<_CustomerContactItem> get copyWith =>
      __$CustomerContactItemCopyWithImpl<_CustomerContactItem>(
          this, _$identity);
}

abstract class _CustomerContactItem implements CustomerContactItem {
  factory _CustomerContactItem(
      {required String name,
      required String phone,
      required DateTime lastContactDate,
      Color? tagColor}) = _$_CustomerContactItem;

  @override
  String get name;
  @override
  String get phone;
  @override
  DateTime get lastContactDate;
  @override
  Color? get tagColor;
  @override
  @JsonKey(ignore: true)
  _$CustomerContactItemCopyWith<_CustomerContactItem> get copyWith =>
      throw _privateConstructorUsedError;
}
