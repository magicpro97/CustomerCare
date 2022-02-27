import 'package:customer_care/pages/home/customer/widgets/customer_item.dart';
import 'package:flutter/material.dart';

class CustomerItemWidget extends StatelessWidget {
  const CustomerItemWidget({
    Key? key,
    required this.customerItem,
    this.onTap,
  }) : super(key: key);

  final CustomerItem customerItem;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              customerItem.tagColor,
              Colors.white,
            ],
          ),
        ),
        child: ListTile(
          onTap: onTap,
          title: Text(customerItem.name),
          subtitle: Text(customerItem.phone),
        ),
      ),
    );
  }
}
