import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_item.freezed.dart';

@freezed
class CustomerItem with _$CustomerItem {
  factory CustomerItem({
    required String id,
    required String name,
    required String phone,
    required Color tagColor,
  }) = _CustomerItem;
}
