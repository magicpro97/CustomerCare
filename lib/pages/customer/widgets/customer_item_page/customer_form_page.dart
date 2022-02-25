import 'package:customer_care/dimen.dart';
import 'package:customer_care/generated/l10n.dart';
import 'package:customer_care/pages/customer/widgets/custom_text_field.dart';
import 'package:customer_care/pages/customer/widgets/customer_color_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import 'customer_input.dart';
import 'id_card_widget.dart';

class CustomerFormPage extends StatefulWidget {
  final String title;
  final String submitText;
  final CustomerInput? customerInput;
  final Function(CustomerInput) onSubmitForm;
  final List<Widget>? actions;
  final Function(XFile?) onIdCardFrontSideTap;
  final Function(XFile?) onIdCardBackSideTap;

  const CustomerFormPage({
    Key? key,
    this.customerInput,
    required this.onSubmitForm,
    required this.title,
    this.actions,
    required this.onIdCardFrontSideTap,
    required this.onIdCardBackSideTap,
    required this.submitText,
  }) : super(key: key);

  @override
  State<CustomerFormPage> createState() => _CustomerFormPageState();
}

class _CustomerFormPageState extends State<CustomerFormPage> {
  final _dateOfBirthFocusNode = FocusNode();
  final _lastContactDateFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  final _dateOfBirthTextEditingController = TextEditingController();
  final _lastContactDateTextEditingController = TextEditingController();
  final _hobbiesTextEditingController = TextEditingController();
  final _fullNameTextEditingController = TextEditingController();
  final _phoneTextEditingController = TextEditingController();
  final _emailTextEditingController = TextEditingController();
  final _emailPasswordTextEditingController = TextEditingController();
  var _dateOfBirth = DateTime.now();
  var _lastContactDate = DateTime.now();
  var _selectedColor = Colors.white;
  final colors = [
    Colors.white,
    Colors.red,
    Colors.yellow,
    Colors.green,
  ];

  @override
  void initState() {
    super.initState();
    final formatter = DateFormat('dd/MM/yyyy');
    _initForm();

    _dateOfBirthFocusNode.addListener(() async {
      if (_dateOfBirthFocusNode.hasFocus) {
        final date = await _showDatePicker();
        if (date != null) {
          _dateOfBirthTextEditingController.text = formatter.format(date);
          _dateOfBirth = date;
        }
        FocusScope.of(context).requestFocus(FocusNode());
      }
    });

    _lastContactDateFocusNode.addListener(() async {
      if (_lastContactDateFocusNode.hasFocus) {
        final date = await _showDatePicker();
        if (date != null) {
          _lastContactDateTextEditingController.text = formatter.format(date);
          _lastContactDate = date;
        }
        FocusScope.of(context).requestFocus(FocusNode());
      }
    });
  }

  void _initForm() {
    final input = widget.customerInput;
    final formatter = DateFormat('dd/MM/yyyy');
    if (input != null) {
      _fullNameTextEditingController.text = input.fullname;
      _hobbiesTextEditingController.text = input.hobbies ?? '';
      _phoneTextEditingController.text = input.phone;
      _lastContactDateTextEditingController.text =
          formatter.format(input.lastContactDate);
      _dateOfBirthTextEditingController.text =
          formatter.format(input.dateOfBirth);
      _emailTextEditingController.text = input.email ?? '';
      _emailPasswordTextEditingController.text = input.emailPassword ?? '';
      _selectedColor = input.tagColor ?? Colors.white;
      _dateOfBirth = input.dateOfBirth;
      _lastContactDate = input.lastContactDate;
    } else {
      final today = DateTime.now();
      _lastContactDateTextEditingController.text = formatter.format(today);
    }
  }

  Future<DateTime?> _showDatePicker() => showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1930),
        lastDate: DateTime.now(),
      );

  @override
  void dispose() {
    super.dispose();
    _dateOfBirthFocusNode.dispose();
    _lastContactDateFocusNode.dispose();
    _dateOfBirthTextEditingController.dispose();
    _lastContactDateTextEditingController.dispose();
    _hobbiesTextEditingController.dispose();
    _fullNameTextEditingController.dispose();
    _phoneTextEditingController.dispose();
    _emailPasswordTextEditingController.dispose();
    _emailTextEditingController.dispose();
  }

  String? _emptyValidator(String? value) {
    if (value?.isEmpty ?? true) {
      return S.of(context).required;
    }

    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final input = widget.customerInput;

      if (input == null) {
        final customer = CustomerInput(
          fullname: _fullNameTextEditingController.text,
          phone: _phoneTextEditingController.text,
          lastContactDate: _lastContactDate,
          dateOfBirth: _dateOfBirth,
          hobbies: _hobbiesTextEditingController.text,
          email: _emailTextEditingController.text,
          emailPassword: _emailPasswordTextEditingController.text,
        );

        widget.onSubmitForm(customer);
      } else {
        widget.onSubmitForm(input.copyWith(
          fullname: _fullNameTextEditingController.text,
          phone: _phoneTextEditingController.text,
          lastContactDate: _lastContactDate,
          dateOfBirth: _dateOfBirth,
          hobbies: _hobbiesTextEditingController.text,
          email: _emailTextEditingController.text,
          emailPassword: _emailPasswordTextEditingController.text,
        ));
      }
    }
  }

  void _onColorTap(Color color) {
    setState(() {
      _selectedColor = color;
    });
  }

  void _onIdCardFontSideTap(XFile? image) {
    widget.onIdCardFrontSideTap(image);
  }

  void _onIdCardBackSideTap(XFile? image) {
    widget.onIdCardBackSideTap(image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: widget.actions,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              _selectedColor,
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(
            kPaddingLeft,
            kPaddingTop,
            kPaddingRight,
            0,
          ),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                CustomerColorBar(
                  onColorTap: _onColorTap,
                  colors: colors,
                  selectedColor: _selectedColor,
                ),
                CustomTextField(
                  controller: _fullNameTextEditingController,
                  labelText: S.of(context).fullname,
                  validator: _emptyValidator,
                ),
                CustomTextField(
                  focusNode: _dateOfBirthFocusNode,
                  controller: _dateOfBirthTextEditingController,
                  showCursor: false,
                  readOnly: true,
                  validator: _emptyValidator,
                  labelText: S.of(context).date_of_birth,
                  suffixIcon: const Icon(Icons.calendar_today),
                ),
                CustomTextField(
                  controller: _phoneTextEditingController,
                  validator: _emptyValidator,
                  labelText: S.of(context).phone_number,
                ),
                CustomTextField(
                  focusNode: _lastContactDateFocusNode,
                  controller: _lastContactDateTextEditingController,
                  showCursor: false,
                  readOnly: true,
                  validator: _emptyValidator,
                  labelText: S.of(context).last_contact_date,
                  textInputAction: TextInputAction.done,
                  suffixIcon: const Icon(Icons.calendar_today),
                ),
                CustomTextField(
                  controller: _emailTextEditingController,
                  labelText: S.of(context).email_optional,
                ),
                CustomTextField(
                  controller: _emailPasswordTextEditingController,
                  labelText: S.of(context).email_password_optional,
                ),
                CustomTextField(
                  controller: _hobbiesTextEditingController,
                  labelText: S.of(context).hobbies_optional,
                ),
                IDCardWidget(
                  url: widget.customerInput?.idCardFrontUrl,
                  title: S.of(context).id_card_front_side,
                  onTap: _onIdCardFontSideTap,
                ),
                SizedBox(
                  height: 10.0.h,
                ),
                IDCardWidget(
                  url: widget.customerInput?.idCardBackUrl,
                  title: S.of(context).id_card_back_side,
                  onTap: _onIdCardBackSideTap,
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                SizedBox(
                  width: double.infinity,
                  height: kButtonHeight,
                  child: ElevatedButton(
                    child: Text(widget.submitText),
                    onPressed: _submitForm,
                  ),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
