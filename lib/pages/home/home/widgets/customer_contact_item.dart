import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_contact_item.freezed.dart';

@freezed
class CustomerContactItem with _$CustomerContactItem {
  factory CustomerContactItem({
    required String name,
    required String phone,
    required DateTime lastContactDate,
  }) = _CustomerContactItem;
}
