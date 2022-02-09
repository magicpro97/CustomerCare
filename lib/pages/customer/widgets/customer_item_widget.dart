import 'package:customer_care/features/customer/customer.dart';
import 'package:flutter/material.dart';

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
