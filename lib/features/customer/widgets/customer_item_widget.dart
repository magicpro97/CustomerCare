import 'package:flutter/material.dart';

import '../customer.dart';

class CustomerItemWidget extends StatelessWidget {
  const CustomerItemWidget({
    Key? key,
    required this.customer,
  }) : super(key: key);

  final Customer customer;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(customer.name),
      subtitle: Text(customer.phone),
    );
  }
}
