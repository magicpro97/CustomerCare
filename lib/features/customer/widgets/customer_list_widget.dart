import 'package:flutter/material.dart';

import '../customer.dart';
import 'customer_item_widget.dart';

class CustomerListWidget extends StatelessWidget {
  final List<Customer> customers;
  final EdgeInsets padding;
  final Function(int) onTap;

  const CustomerListWidget({
    Key? key,
    required this.customers,
    this.padding = EdgeInsets.zero,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: padding,
      itemBuilder: (context, index) => CustomerItemWidget(
        customer: customers[index],
        onTap: () => onTap(index),
      ),
      itemCount: customers.length,
    );
  }
}
