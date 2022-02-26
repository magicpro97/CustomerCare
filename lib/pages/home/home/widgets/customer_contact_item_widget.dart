import 'package:customer_care/dimen.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'customer_contact_item.dart';

class CustomerContactItemWidget extends StatelessWidget {
  final CustomerContactItem item;

  const CustomerContactItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  void _onPhoneCallPressed() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kPaddingTop),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        item.tagColor ?? Colors.white,
        Colors.white,
      ])),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(item.name),
        subtitle: Text(timeago.format(item.lastContactDate)),
        trailing: IconButton(
          onPressed: _onPhoneCallPressed,
          icon: const Icon(Icons.phone),
        ),
      ),
    );
  }
}
