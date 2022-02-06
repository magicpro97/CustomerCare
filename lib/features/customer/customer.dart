import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer.freezed.dart';
part 'customer.g.dart';

@freezed
class Customer with _$Customer {
  @JsonSerializable(explicitToJson: true)
  factory Customer({
    required String id,
    required String name,
    required String phone,
    String? hobbies,
    @JsonKey(name: 'id_number') required String idNumber,
    @JsonKey(name: 'date_of_birth') required DateTime dateOfBirth,
    @JsonKey(name: 'last_contact_date') required DateTime lastContactDate,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}
