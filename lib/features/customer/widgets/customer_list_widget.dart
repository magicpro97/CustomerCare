import 'package:flutter/material.dart';

import '../customer.dart';
import 'customer_item_widget.dart';

class CustomerListWidget extends StatelessWidget {
  final List<Customer> customers;

  const CustomerListWidget({
    Key? key,
    required this.customers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) =>
          CustomerItemWidget(customer: customers[index]),
      itemCount: customers.length,
    );
  }
}
