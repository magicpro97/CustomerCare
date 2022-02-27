import 'package:customer_care/common/widgets/setiing_time_item_widget.dart';
import 'package:customer_care/common/widgets/setting_switch_item_widget.dart';
import 'package:customer_care/generated/l10n.dart';
import 'package:customer_care/pages/customer/widgets/customer_item_page/customer_input.dart';
import 'package:flutter/material.dart';

class RemindBirthdaySettingView extends StatelessWidget {
  final CustomerInput? customerInput;
  final Function(CustomerInput) onSettingChanged;

  const RemindBirthdaySettingView({
    Key? key,
    this.customerInput,
    required this.onSettingChanged,
  }) : super(key: key);

  void _onEnableRemindChanged(bool value) {
    onSettingChanged(customerInput!.copyWith(enableRemindBirthday: value));
  }

  void _onTimeToRemindBirthdayChanged(TimeOfDay value) {
    onSettingChanged(customerInput!.copyWith(remindBirthdayAt: value));
  }

  @override
  Widget build(BuildContext context) {
    if (customerInput == null) {
      return Column(
        children: [
          SettingSwitchItemWidget(
            value: true,
            onChanged: _onEnableRemindChanged,
            title: S.of(context).remind_customer_birthday,
          ),
          SettingTimeItemWidget(
            enable: true,
            onSettingChanged: _onTimeToRemindBirthdayChanged,
          )
        ],
      );
    }

    return Column(
      children: [
        SettingSwitchItemWidget(
          onChanged: _onEnableRemindChanged,
          value: customerInput!.enableRemindBirthday!,
          title: S.of(context).remind_customer_birthday,
        ),
        SettingTimeItemWidget(
          onSettingChanged: _onTimeToRemindBirthdayChanged,
          enable: customerInput!.enableRemindBirthday!,
          initialTime: customerInput!.remindBirthdayAt,
        )
      ],
    );
  }
}
