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
      @JsonKey(name: 'id_card_front_side_url')
          String? idCardFrontSideUrl,
      @JsonKey(name: 'id_card_back_side_url')
          String? idCardBackSideUrl,
      String? email,
      @JsonKey(name: 'email_password')
          String? emailPassword,
      @JsonKey(name: 'tag_color', fromJson: fromHex, toJson: toHex)
          required Color tagColor,
      @JsonKey(name: 'date_of_birth')
          required DateTime dateOfBirth,
      @JsonKey(name: 'last_contact_date')
          required DateTime lastContactDate,
      @JsonKey(name: 'updated_at')
          required DateTime updatedAt,
      @JsonKey(name: 'created_at')
          required DateTime createdAt,
      @JsonKey(name: 'remind_contact_setting')
          required RemindContactSetting remindContactSetting,
      @JsonKey(name: 'remind_birthday_setting')
          required RemindBirthdaySetting remindBirthdaySetting}) {
    return _Customer(
      id: id,
      name: name,
      phone: phone,
      hobbies: hobbies,
      idCardFrontSideUrl: idCardFrontSideUrl,
      idCardBackSideUrl: idCardBackSideUrl,
      email: email,
      emailPassword: emailPassword,
      tagColor: tagColor,
      dateOfBirth: dateOfBirth,
      lastContactDate: lastContactDate,
      updatedAt: updatedAt,
      createdAt: createdAt,
      remindContactSetting: remindContactSetting,
      remindBirthdaySetting: remindBirthdaySetting,
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
  @JsonKey(name: 'id_card_front_side_url')
  String? get idCardFrontSideUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_card_back_side_url')
  String? get idCardBackSideUrl => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_password')
  String? get emailPassword => throw _privateConstructorUsedError;

  @JsonKey(name: 'tag_color', fromJson: fromHex, toJson: toHex)
  Color get tagColor => throw _privateConstructorUsedError;

  @JsonKey(name: 'date_of_birth')
  DateTime get dateOfBirth => throw _privateConstructorUsedError;

  @JsonKey(name: 'last_contact_date')
  DateTime get lastContactDate => throw _privateConstructorUsedError;

  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(name: 'remind_contact_setting')
  RemindContactSetting get remindContactSetting =>
      throw _privateConstructorUsedError;

  @JsonKey(name: 'remind_birthday_setting')
  RemindBirthdaySetting get remindBirthdaySetting =>
      throw _privateConstructorUsedError;

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
      @JsonKey(name: 'id_card_front_side_url')
          String? idCardFrontSideUrl,
      @JsonKey(name: 'id_card_back_side_url')
          String? idCardBackSideUrl,
      String? email,
      @JsonKey(name: 'email_password')
          String? emailPassword,
      @JsonKey(name: 'tag_color', fromJson: fromHex, toJson: toHex)
          Color tagColor,
      @JsonKey(name: 'date_of_birth')
          DateTime dateOfBirth,
      @JsonKey(name: 'last_contact_date')
          DateTime lastContactDate,
      @JsonKey(name: 'updated_at')
          DateTime updatedAt,
      @JsonKey(name: 'created_at')
          DateTime createdAt,
      @JsonKey(name: 'remind_contact_setting')
          RemindContactSetting remindContactSetting,
      @JsonKey(name: 'remind_birthday_setting')
          RemindBirthdaySetting remindBirthdaySetting});

  $RemindContactSettingCopyWith<$Res> get remindContactSetting;

  $RemindBirthdaySettingCopyWith<$Res> get remindBirthdaySetting;
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
    Object? idCardFrontSideUrl = freezed,
    Object? idCardBackSideUrl = freezed,
    Object? email = freezed,
    Object? emailPassword = freezed,
    Object? tagColor = freezed,
    Object? dateOfBirth = freezed,
    Object? lastContactDate = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? remindContactSetting = freezed,
    Object? remindBirthdaySetting = freezed,
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
      idCardFrontSideUrl: idCardFrontSideUrl == freezed
          ? _value.idCardFrontSideUrl
          : idCardFrontSideUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      idCardBackSideUrl: idCardBackSideUrl == freezed
          ? _value.idCardBackSideUrl
          : idCardBackSideUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailPassword: emailPassword == freezed
          ? _value.emailPassword
          : emailPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      tagColor: tagColor == freezed
          ? _value.tagColor
          : tagColor // ignore: cast_nullable_to_non_nullable
              as Color,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastContactDate: lastContactDate == freezed
          ? _value.lastContactDate
          : lastContactDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      remindContactSetting: remindContactSetting == freezed
          ? _value.remindContactSetting
          : remindContactSetting // ignore: cast_nullable_to_non_nullable
              as RemindContactSetting,
      remindBirthdaySetting: remindBirthdaySetting == freezed
          ? _value.remindBirthdaySetting
          : remindBirthdaySetting // ignore: cast_nullable_to_non_nullable
              as RemindBirthdaySetting,
    ));
  }

  @override
  $RemindContactSettingCopyWith<$Res> get remindContactSetting {
    return $RemindContactSettingCopyWith<$Res>(_value.remindContactSetting,
        (value) {
      return _then(_value.copyWith(remindContactSetting: value));
    });
  }

  @override
  $RemindBirthdaySettingCopyWith<$Res> get remindBirthdaySetting {
    return $RemindBirthdaySettingCopyWith<$Res>(_value.remindBirthdaySetting,
        (value) {
      return _then(_value.copyWith(remindBirthdaySetting: value));
    });
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
      @JsonKey(name: 'id_card_front_side_url')
          String? idCardFrontSideUrl,
      @JsonKey(name: 'id_card_back_side_url')
          String? idCardBackSideUrl,
      String? email,
      @JsonKey(name: 'email_password')
          String? emailPassword,
      @JsonKey(name: 'tag_color', fromJson: fromHex, toJson: toHex)
          Color tagColor,
      @JsonKey(name: 'date_of_birth')
          DateTime dateOfBirth,
      @JsonKey(name: 'last_contact_date')
          DateTime lastContactDate,
      @JsonKey(name: 'updated_at')
          DateTime updatedAt,
      @JsonKey(name: 'created_at')
          DateTime createdAt,
      @JsonKey(name: 'remind_contact_setting')
          RemindContactSetting remindContactSetting,
      @JsonKey(name: 'remind_birthday_setting')
          RemindBirthdaySetting remindBirthdaySetting});

  @override
  $RemindContactSettingCopyWith<$Res> get remindContactSetting;

  @override
  $RemindBirthdaySettingCopyWith<$Res> get remindBirthdaySetting;
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
    Object? idCardFrontSideUrl = freezed,
    Object? idCardBackSideUrl = freezed,
    Object? email = freezed,
    Object? emailPassword = freezed,
    Object? tagColor = freezed,
    Object? dateOfBirth = freezed,
    Object? lastContactDate = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? remindContactSetting = freezed,
    Object? remindBirthdaySetting = freezed,
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
      idCardFrontSideUrl: idCardFrontSideUrl == freezed
          ? _value.idCardFrontSideUrl
          : idCardFrontSideUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      idCardBackSideUrl: idCardBackSideUrl == freezed
          ? _value.idCardBackSideUrl
          : idCardBackSideUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailPassword: emailPassword == freezed
          ? _value.emailPassword
          : emailPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      tagColor: tagColor == freezed
          ? _value.tagColor
          : tagColor // ignore: cast_nullable_to_non_nullable
              as Color,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastContactDate: lastContactDate == freezed
          ? _value.lastContactDate
          : lastContactDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      remindContactSetting: remindContactSetting == freezed
          ? _value.remindContactSetting
          : remindContactSetting // ignore: cast_nullable_to_non_nullable
              as RemindContactSetting,
      remindBirthdaySetting: remindBirthdaySetting == freezed
          ? _value.remindBirthdaySetting
          : remindBirthdaySetting // ignore: cast_nullable_to_non_nullable
              as RemindBirthdaySetting,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Customer implements _Customer {
  _$_Customer(
      {required this.id,
      required this.name,
      required this.phone,
      this.hobbies,
      @JsonKey(name: 'id_card_front_side_url')
          this.idCardFrontSideUrl,
      @JsonKey(name: 'id_card_back_side_url')
          this.idCardBackSideUrl,
      this.email,
      @JsonKey(name: 'email_password')
          this.emailPassword,
      @JsonKey(name: 'tag_color', fromJson: fromHex, toJson: toHex)
          required this.tagColor,
      @JsonKey(name: 'date_of_birth')
          required this.dateOfBirth,
      @JsonKey(name: 'last_contact_date')
          required this.lastContactDate,
      @JsonKey(name: 'updated_at')
          required this.updatedAt,
      @JsonKey(name: 'created_at')
          required this.createdAt,
      @JsonKey(name: 'remind_contact_setting')
          required this.remindContactSetting,
      @JsonKey(name: 'remind_birthday_setting')
          required this.remindBirthdaySetting});

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
  @JsonKey(name: 'id_card_front_side_url')
  final String? idCardFrontSideUrl;
  @override
  @JsonKey(name: 'id_card_back_side_url')
  final String? idCardBackSideUrl;
  @override
  final String? email;
  @override
  @JsonKey(name: 'email_password')
  final String? emailPassword;
  @override
  @JsonKey(name: 'tag_color', fromJson: fromHex, toJson: toHex)
  final Color tagColor;
  @override
  @JsonKey(name: 'date_of_birth')
  final DateTime dateOfBirth;
  @override
  @JsonKey(name: 'last_contact_date')
  final DateTime lastContactDate;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'remind_contact_setting')
  final RemindContactSetting remindContactSetting;
  @override
  @JsonKey(name: 'remind_birthday_setting')
  final RemindBirthdaySetting remindBirthdaySetting;

  @override
  String toString() {
    return 'Customer(id: $id, name: $name, phone: $phone, hobbies: $hobbies, idCardFrontSideUrl: $idCardFrontSideUrl, idCardBackSideUrl: $idCardBackSideUrl, email: $email, emailPassword: $emailPassword, tagColor: $tagColor, dateOfBirth: $dateOfBirth, lastContactDate: $lastContactDate, updatedAt: $updatedAt, createdAt: $createdAt, remindContactSetting: $remindContactSetting, remindBirthdaySetting: $remindBirthdaySetting)';
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
                .equals(other.idCardFrontSideUrl, idCardFrontSideUrl) &&
            const DeepCollectionEquality()
                .equals(other.idCardBackSideUrl, idCardBackSideUrl) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.emailPassword, emailPassword) &&
            const DeepCollectionEquality().equals(other.tagColor, tagColor) &&
            const DeepCollectionEquality()
                .equals(other.dateOfBirth, dateOfBirth) &&
            const DeepCollectionEquality()
                .equals(other.lastContactDate, lastContactDate) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.remindContactSetting, remindContactSetting) &&
            const DeepCollectionEquality()
                .equals(other.remindBirthdaySetting, remindBirthdaySetting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(hobbies),
      const DeepCollectionEquality().hash(idCardFrontSideUrl),
      const DeepCollectionEquality().hash(idCardBackSideUrl),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(emailPassword),
      const DeepCollectionEquality().hash(tagColor),
      const DeepCollectionEquality().hash(dateOfBirth),
      const DeepCollectionEquality().hash(lastContactDate),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(remindContactSetting),
      const DeepCollectionEquality().hash(remindBirthdaySetting));

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
      @JsonKey(name: 'id_card_front_side_url')
          String? idCardFrontSideUrl,
      @JsonKey(name: 'id_card_back_side_url')
          String? idCardBackSideUrl,
      String? email,
      @JsonKey(name: 'email_password')
          String? emailPassword,
      @JsonKey(name: 'tag_color', fromJson: fromHex, toJson: toHex)
          required Color tagColor,
      @JsonKey(name: 'date_of_birth')
          required DateTime dateOfBirth,
      @JsonKey(name: 'last_contact_date')
          required DateTime lastContactDate,
      @JsonKey(name: 'updated_at')
          required DateTime updatedAt,
      @JsonKey(name: 'created_at')
          required DateTime createdAt,
      @JsonKey(name: 'remind_contact_setting')
          required RemindContactSetting remindContactSetting,
      @JsonKey(name: 'remind_birthday_setting')
          required RemindBirthdaySetting remindBirthdaySetting}) = _$_Customer;

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
  @JsonKey(name: 'id_card_front_side_url')
  String? get idCardFrontSideUrl;
  @override
  @JsonKey(name: 'id_card_back_side_url')
  String? get idCardBackSideUrl;
  @override
  String? get email;
  @override
  @JsonKey(name: 'email_password')
  String? get emailPassword;
  @override
  @JsonKey(name: 'tag_color', fromJson: fromHex, toJson: toHex)
  Color get tagColor;
  @override
  @JsonKey(name: 'date_of_birth')
  DateTime get dateOfBirth;

  @override
  @JsonKey(name: 'last_contact_date')
  DateTime get lastContactDate;

  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  @override
  @JsonKey(name: 'remind_contact_setting')
  RemindContactSetting get remindContactSetting;

  @override
  @JsonKey(name: 'remind_birthday_setting')
  RemindBirthdaySetting get remindBirthdaySetting;

  @override
  @JsonKey(ignore: true)
  _$CustomerCopyWith<_Customer> get copyWith =>
      throw _privateConstructorUsedError;
}
