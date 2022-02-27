import 'package:customer_care/dimen.dart';
import 'package:flutter/material.dart';

class SettingSwitchItemWidget extends StatelessWidget {
  final bool value;
  final Function(bool) onChanged;
  final String title;

  const SettingSwitchItemWidget({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kSettingPaddingHorizontal),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Switch.adaptive(
            value: value,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
