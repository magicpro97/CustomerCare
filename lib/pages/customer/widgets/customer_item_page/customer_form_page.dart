import 'package:customer_care/dimen.dart';
import 'package:customer_care/pages/customer/widgets/customer_item_page/customer_form_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'customer_input.dart';

class CustomerFormPage extends StatefulWidget {
  final String title;
  final String submitText;
  final CustomerInput? customerInput;
  final Function(CustomerInput) onSubmitForm;
  final List<Widget>? actions;

  const CustomerFormPage({
    Key? key,
    this.customerInput,
    required this.onSubmitForm,
    required this.title,
    this.actions,
    required this.submitText,
  }) : super(key: key);

  @override
  State<CustomerFormPage> createState() => _CustomerFormPageState();
}

class _CustomerFormPageState extends State<CustomerFormPage> {
  final _formKey = GlobalKey<CustomerFormViewState>();
  bool isIdCardFrontSideUploading = false;
  bool isIdCardBackSideUploading = false;

  void _onUploadIdCardFrontSideChange(bool isUploading) {
    setState(() {
      isIdCardFrontSideUploading = isUploading;
    });
  }

  void _onUploadIdCardBackSideChange(bool isUploading) {
    setState(() {
      isIdCardBackSideUploading = isUploading;
    });
  }

  void _submitForm() {
    final value = _formKey.currentState!.validateAndGetFormValue();

    if (value != null) {
      widget.onSubmitForm(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: widget.actions,
      ),
      body: Column(
        children: [
          CustomerFormView(
            submitText: widget.submitText,
            formKey: _formKey,
            onUploadIdCardFrontSideChange: _onUploadIdCardFrontSideChange,
            onUploadIdCardBackSideChange: _onUploadIdCardBackSideChange,
          ),
          SizedBox(
            width: double.infinity,
            height: kButtonHeight,
            child: ElevatedButton(
              child: Text(widget.submitText),
              onPressed: isIdCardFrontSideUploading || isIdCardBackSideUploading
                  ? null
                  : _submitForm,
            ),
          ),
          SizedBox(
            height: 20.0.h,
          ),
        ],
      ),
    );
  }
}
