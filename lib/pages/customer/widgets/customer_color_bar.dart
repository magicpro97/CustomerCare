import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerColorBar extends StatelessWidget {
  final Color selectedColor;
  final List<Color> colors;
  final Function(Color) onColorTap;

  const CustomerColorBar(
      {Key? key,
      required this.onColorTap,
      required this.selectedColor,
      required this.colors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorButtons = colors
        .map(
          (color) => IconButton(
            icon: Icon(
              Icons.lens,
              color: color,
              size: 40.0.r,
            ),
            onPressed: () => onColorTap(color),
          ),
        )
        .toList();

    return Wrap(
      children: colorButtons,
    );
  }
}
