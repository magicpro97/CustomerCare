import 'package:customer_care/dimen.dart';
import 'package:customer_care/features/setting/remind_contact_customer_setting.dart';
import 'package:customer_care/generated/l10n.dart';
import 'package:customer_care/pages/home/setting/setting_view_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingViewWidget extends StatefulWidget {
  const SettingViewWidget({Key? key}) : super(key: key);

  @override
  State<SettingViewWidget> createState() => _SettingViewWidgetState();
}

class _SettingViewWidgetState extends State<SettingViewWidget> {
  final reminderDayNumber = List.generate(30, (index) => index + 1);

  late final SettingViewBloc settingBloc;

  late final List<DropdownMenuItem<int>> reminderDayNumberDropdownMenuItems;

  late final List<Widget> selectedReminderDayNumberDropdownMenuItems;

  @override
  void initState() {
    super.initState();
    settingBloc = context.read<SettingViewBloc>();
    reminderDayNumberDropdownMenuItems = reminderDayNumber
        .map((number) => DropdownMenuItem<int>(
              child: Text('$num'),
              value: number,
            ))
        .toList();
    selectedReminderDayNumberDropdownMenuItems = reminderDayNumber
        .map((number) => Center(child: Text(S.of(context).day(number))))
        .toList();
  }

  void _onRemindContactCustomerSwitchChange(
    RemindContactCustomerSetting setting,
    bool value,
  ) {
    settingBloc.add(SettingViewUpdateRemindContactCustomerEvent(
        setting.copyWith(enableRemindContact: value)));
  }

  void _onRemindContactCustomerDropdownChange(
    RemindContactCustomerSetting setting,
    int? value,
  ) {
    settingBloc.add(SettingViewUpdateRemindContactCustomerEvent(
        setting.copyWith(
            remindContactDayAfterNumber:
                value ?? setting.remindContactDayAfterNumber)));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kPaddingTop),
      width: double.infinity,
      child: Column(
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(kPaddingTop),
              child: StreamBuilder<RemindContactCustomerSetting>(
                  stream: settingBloc.reminderContactCustomerSetting$,
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Container();
                    }

                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(S.of(context).remind_contact_to_customer),
                            Switch.adaptive(
                              value: snapshot.data!.enableRemindContact,
                              onChanged: (value) =>
                                  _onRemindContactCustomerSwitchChange(
                                      snapshot.data!, value),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(S.of(context).after),
                            DropdownButtonHideUnderline(
                                child: DropdownButton<int>(
                              onChanged: (value) =>
                                  _onRemindContactCustomerDropdownChange(
                                      snapshot.data!, value),
                              value: snapshot.data!.remindContactDayAfterNumber,
                              items: reminderDayNumberDropdownMenuItems,
                              selectedItemBuilder: (_) =>
                                  selectedReminderDayNumberDropdownMenuItems,
                            )),
                          ],
                        ),
                      ],
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
