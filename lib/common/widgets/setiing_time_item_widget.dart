import 'package:customer_care/dimen.dart';
import 'package:customer_care/generated/l10n.dart';
import 'package:flutter/material.dart';

class SettingTimeItemWidget extends StatefulWidget {
  final bool enable;
  final TimeOfDay? initialTime;
  final Function(TimeOfDay) onSettingChanged;

  const SettingTimeItemWidget({
    Key? key,
    this.initialTime,
    required this.onSettingChanged,
    required this.enable,
  }) : super(key: key);

  @override
  State<SettingTimeItemWidget> createState() => _SettingTimeItemWidgetState();
}

class _SettingTimeItemWidgetState extends State<SettingTimeItemWidget> {
  TimeOfDay? _selectedTime;

  @override
  void initState() {
    super.initState();
    _selectedTime = widget.initialTime ?? TimeOfDay.now();
  }

  void _onTap(BuildContext context) async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime!,
    );

    if (selectedTime != null && selectedTime != _selectedTime) {
      setState(() {
        _selectedTime = selectedTime;
      });

      widget.onSettingChanged(_selectedTime!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !widget.enable,
      child: GestureDetector(
        onTap: () => _onTap(context),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: kSettingPaddingHorizontal,
            vertical: kSettingPaddingVertical,
          ),
          color: widget.enable ? Colors.transparent : Colors.grey[100],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(S.of(context).at),
              Text(_selectedTime!.format(context)),
            ],
          ),
        ),
      ),
    );
  }
}
