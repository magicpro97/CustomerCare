import 'package:flutter/material.dart';

class IDCardPlaceholder extends StatelessWidget {
  final String title;

  const IDCardPlaceholder({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.image),
        Text(title),
      ],
    );
  }
}
