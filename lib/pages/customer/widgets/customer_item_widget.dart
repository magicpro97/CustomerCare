import 'package:customer_care/pages/customer/widgets/customer_item_page/customer_input.dart';
import 'package:flutter/material.dart';

class CustomerItemWidget extends StatelessWidget {
  const CustomerItemWidget({
    Key? key,
    required this.customerInput,
    this.onTap,
  }) : super(key: key);

  final CustomerInput customerInput;
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
              customerInput.tagColor ?? Colors.white,
              Colors.transparent,
            ],
          ),
        ),
        child: ListTile(
          onTap: onTap,
          title: Text(customerInput.fullname),
          subtitle: Text(customerInput.phone),
        ),
      ),
    );
  }
}
