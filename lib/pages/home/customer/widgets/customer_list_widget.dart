import 'package:customer_care/pages/home/customer/widgets/customer_item.dart';
import 'package:customer_care/pages/home/customer/widgets/customer_item_widget.dart';
import 'package:flutter/material.dart';

class CustomerListWidget extends StatelessWidget {
  final List<CustomerItem> customers;
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
        customerItem: customers[index],
        onTap: () => onTap(index),
      ),
      itemCount: customers.length,
    );
  }
}
