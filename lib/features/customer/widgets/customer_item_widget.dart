import 'package:flutter/material.dart';

import '../customer.dart';

class CustomerItemWidget extends StatelessWidget {
  const CustomerItemWidget({
    Key? key,
    required this.customer,
    this.onTap,
  }) : super(key: key);

  final Customer customer;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        title: Text(customer.name),
        subtitle: Text(customer.phone),
      ),
    );
  }
}
