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
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.red,
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
