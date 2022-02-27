// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CustomerItemTearOff {
  const _$CustomerItemTearOff();

  _CustomerItem call(
      {required String id,
      required String name,
      required String phone,
      required Color tagColor}) {
    return _CustomerItem(
      id: id,
      name: name,
      phone: phone,
      tagColor: tagColor,
    );
  }
}

/// @nodoc
const $CustomerItem = _$CustomerItemTearOff();

/// @nodoc
mixin _$CustomerItem {
  String get id => throw _privateConstructorUsedError;

  String get name => throw _privateConstructorUsedError;

  String get phone => throw _privateConstructorUsedError;

  Color get tagColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerItemCopyWith<CustomerItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerItemCopyWith<$Res> {
  factory $CustomerItemCopyWith(
          CustomerItem value, $Res Function(CustomerItem) then) =
      _$CustomerItemCopyWithImpl<$Res>;

  $Res call({String id, String name, String phone, Color tagColor});
}

/// @nodoc
class _$CustomerItemCopyWithImpl<$Res> implements $CustomerItemCopyWith<$Res> {
  _$CustomerItemCopyWithImpl(this._value, this._then);

  final CustomerItem _value;

  // ignore: unused_field
  final $Res Function(CustomerItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? tagColor = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      tagColor: tagColor == freezed
          ? _value.tagColor
          : tagColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
abstract class _$CustomerItemCopyWith<$Res>
    implements $CustomerItemCopyWith<$Res> {
  factory _$CustomerItemCopyWith(
          _CustomerItem value, $Res Function(_CustomerItem) then) =
      __$CustomerItemCopyWithImpl<$Res>;

  @override
  $Res call({String id, String name, String phone, Color tagColor});
}

/// @nodoc
class __$CustomerItemCopyWithImpl<$Res> extends _$CustomerItemCopyWithImpl<$Res>
    implements _$CustomerItemCopyWith<$Res> {
  __$CustomerItemCopyWithImpl(
      _CustomerItem _value, $Res Function(_CustomerItem) _then)
      : super(_value, (v) => _then(v as _CustomerItem));

  @override
  _CustomerItem get _value => super._value as _CustomerItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? tagColor = freezed,
  }) {
    return _then(_CustomerItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      tagColor: tagColor == freezed
          ? _value.tagColor
          : tagColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_CustomerItem implements _CustomerItem {
  _$_CustomerItem(
      {required this.id,
      required this.name,
      required this.phone,
      required this.tagColor});

  @override
  final String id;
  @override
  final String name;
  @override
  final String phone;
  @override
  final Color tagColor;

  @override
  String toString() {
    return 'CustomerItem(id: $id, name: $name, phone: $phone, tagColor: $tagColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.tagColor, tagColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(tagColor));

  @JsonKey(ignore: true)
  @override
  _$CustomerItemCopyWith<_CustomerItem> get copyWith =>
      __$CustomerItemCopyWithImpl<_CustomerItem>(this, _$identity);
}

abstract class _CustomerItem implements CustomerItem {
  factory _CustomerItem(
      {required String id,
      required String name,
      required String phone,
      required Color tagColor}) = _$_CustomerItem;

  @override
  String get id;

  @override
  String get name;

  @override
  String get phone;

  @override
  Color get tagColor;

  @override
  @JsonKey(ignore: true)
  _$CustomerItemCopyWith<_CustomerItem> get copyWith =>
      throw _privateConstructorUsedError;
}
