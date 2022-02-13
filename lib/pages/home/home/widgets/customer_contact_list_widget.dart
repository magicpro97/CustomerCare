import 'package:customer_care/pages/home/home/widgets/customer_contact_item.dart';
import 'package:customer_care/pages/home/home/widgets/customer_contact_item_widget.dart';
import 'package:flutter/material.dart';

class CustomerContactListWidget extends StatelessWidget {
  final List<CustomerContactItem> items;

  const CustomerContactListWidget({Key? key, required this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index) => CustomerContactItemWidget(
        item: items[index],
      ),
      itemCount: items.length,
      shrinkWrap: true,
    );
  }
}
