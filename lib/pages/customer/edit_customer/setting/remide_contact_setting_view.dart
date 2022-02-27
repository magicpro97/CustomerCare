import 'package:customer_care/common/widgets/setting_dropdown_day_item_widget.dart';
import 'package:customer_care/common/widgets/setting_dropdown_item_widget.dart';
import 'package:customer_care/common/widgets/setting_switch_item_widget.dart';
import 'package:customer_care/generated/l10n.dart';
import 'package:customer_care/pages/customer/widgets/customer_item_page/customer_input.dart';
import 'package:flutter/material.dart';

class RemindContactSettingView extends StatefulWidget {
  final CustomerInput? customerInput;
  final Function(CustomerInput) onSettingChanged;

  const RemindContactSettingView({
    Key? key,
    this.customerInput,
    required this.onSettingChanged,
  }) : super(key: key);

  @override
  _RemindContactSettingViewState createState() =>
      _RemindContactSettingViewState();
}

class _RemindContactSettingViewState extends State<RemindContactSettingView> {
  final reminderDayNumber = List.generate(30, (index) => index + 1);

  late final List<DropdownMenuItem<int>> reminderDayNumberDropdownMenuItems;

  late final List<Widget> selectedReminderDayNumberDropdownMenuItems;

  void _onEnableReminderContactChanged(bool value) {
    widget.onSettingChanged(
        widget.customerInput!.copyWith(enableRemindContact: value));
  }

  void _onReminderContactDayChanged(int? value) {
    if (value != null) {
      widget.onSettingChanged(
          widget.customerInput!.copyWith(remindContactDayAfter: value));
    }
  }

  @override
  void initState() {
    super.initState();

    reminderDayNumberDropdownMenuItems = reminderDayNumber
        .map((number) => DropdownMenuItem<int>(
              child: Text('$number'),
              value: number,
            ))
        .toList();
    selectedReminderDayNumberDropdownMenuItems = reminderDayNumber
        .map((number) => SettingDropdownDayItemWidget(number: number))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.customerInput == null) {
      return Column(
        children: [
          SettingSwitchItemWidget(
            value: true,
            onChanged: _onEnableReminderContactChanged,
            title: S.of(context).remind_contact_to_customer,
          ),
          SettingDropdownItemWidget<int>(
            enable: true,
            onChanged: _onReminderContactDayChanged,
            value: 3,
            items: reminderDayNumberDropdownMenuItems,
            selectedItemBuilder: (_) =>
                selectedReminderDayNumberDropdownMenuItems,
            title: S.of(context).after,
          ),
        ],
      );
    }

    return Column(
      children: [
        SettingSwitchItemWidget(
          value: widget.customerInput!.enableRemindContact!,
          onChanged: _onEnableReminderContactChanged,
          title: S.of(context).remind_contact_to_customer,
        ),
        SettingDropdownItemWidget<int>(
          enable: widget.customerInput!.enableRemindContact!,
          onChanged: _onReminderContactDayChanged,
          value: widget.customerInput!.remindContactDayAfter!,
          items: reminderDayNumberDropdownMenuItems,
          selectedItemBuilder: (_) =>
              selectedReminderDayNumberDropdownMenuItems,
          title: S.of(context).after,
        ),
      ],
    );
  }
}
