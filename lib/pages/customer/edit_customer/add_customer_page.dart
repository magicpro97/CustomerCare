import 'package:customer_care/dimen.dart';
import 'package:customer_care/generated/l10n.dart';
import 'package:customer_care/pages/customer/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddCustomerPage extends StatefulWidget {
  const AddCustomerPage({Key? key}) : super(key: key);

  @override
  State<AddCustomerPage> createState() => _AddCustomerPageState();
}

class _AddCustomerPageState extends State<AddCustomerPage> {
  final _dateOfBirthFocusNode = FocusNode();
  final _lastContactDateFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  final _dateOfBirthTextEditingController = TextEditingController();
  final _lastContactDateTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final today = DateTime.now();
    final formatter = DateFormat('dd/MM/yyyy');
    _dateOfBirthTextEditingController.text = formatter.format(today);
    _lastContactDateTextEditingController.text = formatter.format(today);

    _dateOfBirthFocusNode.addListener(() async {
      if (_dateOfBirthFocusNode.hasFocus) {
        final date = await _showDatePicker();
        if (date != null) {
          _dateOfBirthTextEditingController.text = formatter.format(date);
        }
        FocusScope.of(context).requestFocus(FocusNode());
      }
    });

    _lastContactDateFocusNode.addListener(() async {
      if (_lastContactDateFocusNode.hasFocus) {
        final date = await _showDatePicker();
        if (date != null) {
          _lastContactDateTextEditingController.text = formatter.format(date);
        }
        FocusScope.of(context).requestFocus(FocusNode());
      }
    });
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
  }

  String? _emptyValidator(String? value) {
    if (value?.isEmpty ?? true) {
      return S.of(context).required;
    }

    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).edit_customer_information),
      ),
      body: SingleChildScrollView(
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
              CustomTextField(
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
                validator: _emptyValidator,
                labelText: S.of(context).id_number,
              ),
              CustomTextField(
                validator: _emptyValidator,
                labelText: S.of(context).hobbies,
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
              SizedBox(
                width: double.infinity,
                height: kButtonHeight,
                child: ElevatedButton(
                  child: Text(S.of(context).create),
                  onPressed: _submitForm,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
