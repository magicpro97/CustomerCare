import 'package:customer_care/pages/customer/widgets/customer_item_page/customer_input.dart';
import 'package:flutter/material.dart';

import 'customer_item_widget.dart';

class CustomerListWidget extends StatelessWidget {
  final List<CustomerInput> customers;
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
        customerInput: customers[index],
        onTap: () => onTap(index),
      ),
      itemCount: customers.length,
    );
  }
}
