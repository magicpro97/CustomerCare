import 'package:auto_route/auto_route.dart';
import 'package:customer_care/dimen.dart';
import 'package:customer_care/features/customer/customer.dart';
import 'package:customer_care/generated/l10n.dart';
import 'package:customer_care/pages/customer/widgets/custom_text_field.dart';
import 'package:customer_care/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

import 'add_customer_bloc.dart';

class AddCustomerPage extends StatefulWidget with AutoRouteWrapper {
  const AddCustomerPage({Key? key}) : super(key: key);

  @override
  State<AddCustomerPage> createState() => _AddCustomerPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.I<AddCustomerBloc>(),
      child: this,
    );
  }
}

class _AddCustomerPageState extends State<AddCustomerPage> {
  final _dateOfBirthFocusNode = FocusNode();
  final _lastContactDateFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  final _dateOfBirthTextEditingController = TextEditingController();
  final _lastContactDateTextEditingController = TextEditingController();
  final _hobbiesTextEditingController = TextEditingController();
  final _fullNameTextEditingController = TextEditingController();
  final _phoneTextEditingController = TextEditingController();
  final _idNumberTextEditingController = TextEditingController();
  var _dateOfBirth = DateTime.now();
  var _lastContactDate = DateTime.now();

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
    _idNumberTextEditingController.dispose();
  }

  String? _emptyValidator(String? value) {
    if (value?.isEmpty ?? true) {
      return S.of(context).required;
    }

    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final customer = Customer(
        id: const Uuid().v1(),
        name: _fullNameTextEditingController.text,
        phone: _phoneTextEditingController.text,
        lastContactDate: _lastContactDate,
        dateOfBirth: _dateOfBirth,
        hobbies: _hobbiesTextEditingController.text,
        idNumber: _idNumberTextEditingController.text,
      );
      context.read<AddCustomerBloc>()
        ..add(AddCustomerCreateEvent(customer))
        ..stream.listen((state) {
          if (state is AddCustomerLoading) {
            EasyLoading.show();
          } else if (state is AddCustomerLoadedSuccess) {
            context.navigateTo(const HomeRoute());
            EasyLoading.dismiss();
          } else if (state is AddCustomerLoadedFail) {
            EasyLoading.showError(S.of(context).common_error);
          }
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).add_new_a_customer),
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
                controller: _idNumberTextEditingController,
                validator: _emptyValidator,
                labelText: S.of(context).id_number,
              ),
              CustomTextField(
                controller: _phoneTextEditingController,
                validator: _emptyValidator,
                labelText: S.of(context).phone_number,
              ),
              CustomTextField(
                controller: _hobbiesTextEditingController,
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
