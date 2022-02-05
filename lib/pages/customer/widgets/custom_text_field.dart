import 'package:flutter/material.dart';

import '../../../dimen.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.labelText,
    this.hintText,
    this.errorText,
    this.focusNode,
    this.textInputAction = TextInputAction.next,
    this.suffixIcon,
    this.showCursor = true,
    this.readOnly = false,
    this.validator,
    this.controller,
  }) : super(key: key);

  final String labelText;
  final String? hintText;
  final String? errorText;
  final FocusNode? focusNode;
  final TextInputAction textInputAction;
  final Widget? suffixIcon;
  final bool showCursor;
  final bool readOnly;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kPaddingTop),
      child: TextFormField(
        focusNode: focusNode,
        textInputAction: textInputAction,
        readOnly: readOnly,
        showCursor: showCursor,
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: labelText,
          hintText: hintText,
          errorText: errorText,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
