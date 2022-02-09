import 'package:customer_care/features/customer/customer.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class CustomerContactItemWidget extends StatelessWidget {
  final Customer customer;

  const CustomerContactItemWidget({
    Key? key,
    required this.customer,
  }) : super(key: key);

  void _onPhoneCallPressed() {}

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(customer.name),
      subtitle: Text(timeago.format(customer.lastContactDate)),
      trailing: IconButton(
        onPressed: _onPhoneCallPressed,
        icon: const Icon(Icons.phone),
      ),
    );
  }
}
