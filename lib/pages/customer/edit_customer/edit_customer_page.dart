import 'package:auto_route/auto_route.dart';
import 'package:customer_care/common/dialog.dart';
import 'package:customer_care/dimen.dart';
import 'package:customer_care/features/customer/customer.dart';
import 'package:customer_care/generated/l10n.dart';
import 'package:customer_care/pages/customer/edit_customer/edit_customer_bloc.dart';
import 'package:customer_care/pages/customer/widgets/custom_text_field.dart';
import 'package:customer_care/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';

class EditCustomerPage extends StatefulWidget implements AutoRouteWrapper {
  const EditCustomerPage({
    Key? key,
    required this.customer,
  }) : super(key: key);

  final Customer customer;

  @override
  State<EditCustomerPage> createState() => _EditCustomerPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.I<EditCustomerBloc>(),
      child: this,
    );
  }
}

class _EditCustomerPageState extends State<EditCustomerPage> {
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
    _fullNameTextEditingController.text = widget.customer.name;
    _hobbiesTextEditingController.text = widget.customer.hobbies ?? '';
    _phoneTextEditingController.text = widget.customer.phone;
    _idNumberTextEditingController.text = widget.customer.idNumber;

    final formatter = DateFormat('dd/MM/yyyy');
    _dateOfBirthTextEditingController.text =
        formatter.format(widget.customer.dateOfBirth);
    _lastContactDateTextEditingController.text =
        formatter.format(widget.customer.lastContactDate);

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
      final customer = widget.customer.copyWith(
        name: _fullNameTextEditingController.text,
        phone: _phoneTextEditingController.text,
        lastContactDate: _lastContactDate,
        dateOfBirth: _dateOfBirth,
        hobbies: _hobbiesTextEditingController.text,
        idNumber: _idNumberTextEditingController.text,
        updatedAt: DateTime.now(),
      );
      context.read<EditCustomerBloc>()
        ..add(EditCustomerSaveEvent(customer))
        ..stream.listen((state) {
          if (state is EditCustomerLoading) {
            EasyLoading.show();
          } else if (state is EditCustomerLoadedSuccess) {
            EasyLoading.dismiss();
            context.navigateNamedTo(const HomeRoute().path);
          } else if (state is EditCustomerLoadedFail) {
            EasyLoading.showError(S.of(context).common_error);
          }
        });
    }
  }

  void _removeCustomer(String customerId) async {
    final result = await showDeleteDialog(
      context,
      S.of(context).remove_customer,
      S.of(context).remove_customer_message,
    );

    if (!result!) return;

    context.read<EditCustomerBloc>()
      ..add(EditCustomerRemoveCustomerEvent(customerId))
      ..stream.listen((state) async {
        if (state is EditCustomerLoading) {
          EasyLoading.show();
        } else if (state is EditCustomerLoadedSuccess) {
          await EasyLoading.dismiss();
          context.navigateTo(const HomeRoute());
        } else if (state is EditCustomerLoadedFail) {
          EasyLoading.showError(S.of(context).common_error);
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).edit_customer_information),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => _removeCustomer(widget.customer.id),
          )
        ],
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
                  child: Text(S.of(context).save),
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
