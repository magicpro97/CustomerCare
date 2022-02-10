import 'package:customer_care/generated/l10n.dart';
import 'package:flutter/material.dart';

class SelectedReminderDayNumberDropdownMenuItemWidget extends StatelessWidget {
  final int number;

  const SelectedReminderDayNumberDropdownMenuItemWidget({
    Key? key,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(S.of(context).day(number)));
  }
}
