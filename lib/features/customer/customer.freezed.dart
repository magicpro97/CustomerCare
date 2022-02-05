// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return _Customer.fromJson(json);
}

/// @nodoc
class _$CustomerTearOff {
  const _$CustomerTearOff();

  _Customer call(
      {required String id,
      required String name,
      required String phone,
      String? hobbies,
      @JsonKey(name: 'date_of_birth') required DateTime dateOfBirth,
      @JsonKey(name: 'last_contact_date') required DateTime lastContactDate}) {
    return _Customer(
      id: id,
      name: name,
      phone: phone,
      hobbies: hobbies,
      dateOfBirth: dateOfBirth,
      lastContactDate: lastContactDate,
    );
  }

  Customer fromJson(Map<String, Object?> json) {
    return Customer.fromJson(json);
  }
}

/// @nodoc
const $Customer = _$CustomerTearOff();

/// @nodoc
mixin _$Customer {
  String get id => throw _privateConstructorUsedError;

  String get name => throw _privateConstructorUsedError;

  String get phone => throw _privateConstructorUsedError;

  String? get hobbies => throw _privateConstructorUsedError;

  @JsonKey(name: 'date_of_birth')
  DateTime get dateOfBirth => throw _privateConstructorUsedError;

  @JsonKey(name: 'last_contact_date')
  DateTime get lastContactDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res>;

  $Res call(
      {String id,
      String name,
      String phone,
      String? hobbies,
      @JsonKey(name: 'date_of_birth') DateTime dateOfBirth,
      @JsonKey(name: 'last_contact_date') DateTime lastContactDate});
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res> implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  final Customer _value;
  // ignore: unused_field
  final $Res Function(Customer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? hobbies = freezed,
    Object? dateOfBirth = freezed,
    Object? lastContactDate = freezed,
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
      hobbies: hobbies == freezed
          ? _value.hobbies
          : hobbies // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastContactDate: lastContactDate == freezed
          ? _value.lastContactDate
          : lastContactDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$CustomerCopyWith<$Res> implements $CustomerCopyWith<$Res> {
  factory _$CustomerCopyWith(_Customer value, $Res Function(_Customer) then) =
      __$CustomerCopyWithImpl<$Res>;

  @override
  $Res call(
      {String id,
      String name,
      String phone,
      String? hobbies,
      @JsonKey(name: 'date_of_birth') DateTime dateOfBirth,
      @JsonKey(name: 'last_contact_date') DateTime lastContactDate});
}

/// @nodoc
class __$CustomerCopyWithImpl<$Res> extends _$CustomerCopyWithImpl<$Res>
    implements _$CustomerCopyWith<$Res> {
  __$CustomerCopyWithImpl(_Customer _value, $Res Function(_Customer) _then)
      : super(_value, (v) => _then(v as _Customer));

  @override
  _Customer get _value => super._value as _Customer;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? hobbies = freezed,
    Object? dateOfBirth = freezed,
    Object? lastContactDate = freezed,
  }) {
    return _then(_Customer(
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
      hobbies: hobbies == freezed
          ? _value.hobbies
          : hobbies // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastContactDate: lastContactDate == freezed
          ? _value.lastContactDate
          : lastContactDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Customer implements _Customer {
  _$_Customer(
      {required this.id,
      required this.name,
      required this.phone,
      this.hobbies,
      @JsonKey(name: 'date_of_birth') required this.dateOfBirth,
      @JsonKey(name: 'last_contact_date') required this.lastContactDate});

  factory _$_Customer.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String phone;
  @override
  final String? hobbies;
  @override
  @JsonKey(name: 'date_of_birth')
  final DateTime dateOfBirth;
  @override
  @JsonKey(name: 'last_contact_date')
  final DateTime lastContactDate;

  @override
  String toString() {
    return 'Customer(id: $id, name: $name, phone: $phone, hobbies: $hobbies, dateOfBirth: $dateOfBirth, lastContactDate: $lastContactDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Customer &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.hobbies, hobbies) &&
            const DeepCollectionEquality()
                .equals(other.dateOfBirth, dateOfBirth) &&
            const DeepCollectionEquality()
                .equals(other.lastContactDate, lastContactDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(hobbies),
      const DeepCollectionEquality().hash(dateOfBirth),
      const DeepCollectionEquality().hash(lastContactDate));

  @JsonKey(ignore: true)
  @override
  _$CustomerCopyWith<_Customer> get copyWith =>
      __$CustomerCopyWithImpl<_Customer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerToJson(this);
  }
}

abstract class _Customer implements Customer {
  factory _Customer(
      {required String id,
      required String name,
      required String phone,
      String? hobbies,
      @JsonKey(name: 'date_of_birth')
          required DateTime dateOfBirth,
      @JsonKey(name: 'last_contact_date')
          required DateTime lastContactDate}) = _$_Customer;

  factory _Customer.fromJson(Map<String, dynamic> json) = _$_Customer.fromJson;

  @override
  String get id;

  @override
  String get name;

  @override
  String get phone;

  @override
  String? get hobbies;

  @override
  @JsonKey(name: 'date_of_birth')
  DateTime get dateOfBirth;

  @override
  @JsonKey(name: 'last_contact_date')
  DateTime get lastContactDate;

  @override
  @JsonKey(ignore: true)
  _$CustomerCopyWith<_Customer> get copyWith =>
      throw _privateConstructorUsedError;
}
