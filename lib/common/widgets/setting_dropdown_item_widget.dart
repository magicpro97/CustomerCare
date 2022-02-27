import 'package:customer_care/dimen.dart';
import 'package:flutter/material.dart';

class SettingDropdownItemWidget<T> extends StatelessWidget {
  final bool enable;
  final Function(T?) onChanged;
  final T value;
  final List<DropdownMenuItem<T>> items;
  final List<Widget> Function(BuildContext) selectedItemBuilder;
  final String title;

  const SettingDropdownItemWidget({
    Key? key,
    required this.enable,
    required this.onChanged,
    required this.value,
    required this.items,
    required this.selectedItemBuilder,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kPaddingTop),
      color: enable ? Colors.transparent : Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          IgnorePointer(
            ignoring: !enable,
            child: DropdownButtonHideUnderline(
              child: DropdownButton<T>(
                onChanged: onChanged,
                value: value,
                items: items,
                selectedItemBuilder: selectedItemBuilder,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
