import 'package:customer_care/pages/customer/edit_customer/setting/remide_birthday_setting_view.dart';
import 'package:customer_care/pages/customer/edit_customer/setting/remide_contact_setting_view.dart';
import 'package:customer_care/pages/customer/widgets/customer_item_page/customer_input.dart';
import 'package:flutter/material.dart';

class EditSettingView extends StatelessWidget {
  final CustomerInput? customerInput;
  final Function(CustomerInput) onSettingChanged;

  const EditSettingView({
    Key? key,
    required this.onSettingChanged,
    this.customerInput,
  }) : super(key: key);

  void _onRemindContactSettingChanged(CustomerInput customerInput) {
    onSettingChanged(customerInput);
  }

  void _onRemindBirthdaySettingChanged(CustomerInput customerInput) {
    onSettingChanged(customerInput);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: ListView(
        children: [
          RemindContactSettingView(
            customerInput: customerInput,
            onSettingChanged: _onRemindContactSettingChanged,
          ),
          RemindBirthdaySettingView(
            customerInput: customerInput,
            onSettingChanged: _onRemindBirthdaySettingChanged,
          ),
        ],
      ),
    );
  }
}
