import 'package:customer_care/features/customer/customer.dart';
import 'package:customer_care/pages/home/home/widgets/customer_contact_item_widget.dart';
import 'package:flutter/material.dart';

class CustomerContactListWidget extends StatelessWidget {
  final List<Customer> customers;

  const CustomerContactListWidget({Key? key, required this.customers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index) => CustomerContactItemWidget(
        customer: customers[index],
      ),
      itemCount: customers.length,
      shrinkWrap: true,
    );
  }
}
