import 'package:customer_care/dimen.dart';
import 'package:customer_care/generated/l10n.dart';
import 'package:customer_care/pages/customer/upload_id_card/id_card_side.dart';
import 'package:customer_care/pages/customer/upload_id_card/id_card_widget.dart';
import 'package:customer_care/pages/customer/upload_id_card/upload_id_card_bloc.dart';
import 'package:customer_care/pages/customer/widgets/custom_text_field.dart';
import 'package:customer_care/pages/customer/widgets/customer_color_bar.dart';
import 'package:customer_care/pages/customer/widgets/customer_item_page/customer_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';

class CustomerFormView extends StatefulWidget {
  final CustomerInput? customerInput;
  final String submitText;
  final Function(bool) onUploadIdCardFrontSideChange;
  final Function(bool) onUploadIdCardBackSideChange;

  const CustomerFormView({
    Key? key,
    this.customerInput,
    required this.submitText,
    required this.onUploadIdCardFrontSideChange,
    required this.onUploadIdCardBackSideChange,
  }) : super(key: key);

  @override
  State<CustomerFormView> createState() => CustomerFormViewState();
}

class CustomerFormViewState extends State<CustomerFormView>
    with AutomaticKeepAliveClientMixin {
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
  Color? _selectedColor;
  final colors = [
    Colors.white,
    Colors.red,
    Colors.yellow,
    Colors.green,
  ];

  bool isIdCardFrontSideUploading = false;
  bool isIdCardBackSideUploading = false;
  String? _idCardFrontSideUrl;
  String? _idCardBackSideUrl;

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

  @override
  void didUpdateWidget(covariant CustomerFormView oldWidget) {
    _initForm();
    super.didUpdateWidget(oldWidget);
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
      _selectedColor = input.tagColor;
      _dateOfBirth = input.dateOfBirth;
      _lastContactDate = input.lastContactDate;
      _selectedColor = input.tagColor;
    } else {
      final today = DateTime.now();
      _lastContactDateTextEditingController.text = formatter.format(today);
      _selectedColor = Colors.white;
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

  CustomerInput? validateAndGetFormValue() {
    if (_formKey.currentState!.validate()) {
      final input = widget.customerInput;

      if (input == null) {
        return CustomerInput(
          fullname: _fullNameTextEditingController.text,
          phone: _phoneTextEditingController.text,
          lastContactDate: _lastContactDate,
          dateOfBirth: _dateOfBirth,
          hobbies: _hobbiesTextEditingController.text,
          email: _emailTextEditingController.text,
          emailPassword: _emailPasswordTextEditingController.text,
          idCardFrontSideUrl: _idCardFrontSideUrl,
          idCardBackSideUrl: _idCardBackSideUrl,
          tagColor: _selectedColor ?? Colors.white,
        );
      } else {
        return input.copyWith(
          id: input.id,
          fullname: _fullNameTextEditingController.text,
          phone: _phoneTextEditingController.text,
          lastContactDate: _lastContactDate,
          dateOfBirth: _dateOfBirth,
          hobbies: _hobbiesTextEditingController.text,
          email: _emailTextEditingController.text,
          emailPassword: _emailPasswordTextEditingController.text,
          idCardFrontSideUrl: _idCardFrontSideUrl ?? input.idCardFrontSideUrl,
          idCardBackSideUrl: _idCardBackSideUrl ?? input.idCardBackSideUrl,
          tagColor: _selectedColor ?? input.tagColor,
        );
      }
    }
    return null;
  }

  void _onColorTap(Color color) {
    setState(() {
      _selectedColor = color;
    });
  }

  void _onIdCardFrontSideUploadStarted() {
    setState(() {
      isIdCardFrontSideUploading = true;
    });
  }

  void _onIdCardBackSideUploadStarted() {
    setState(() {
      isIdCardBackSideUploading = true;
    });
  }

  void _onIdCardFrontSideLoaded(String url) {
    _idCardFrontSideUrl = url;

    setState(() {
      isIdCardFrontSideUploading = false;
    });
  }

  void _onIdCardBackSideLoaded(String url) {
    _idCardBackSideUrl = url;

    setState(() {
      isIdCardBackSideUploading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            _selectedColor == Colors.white ? Colors.transparent : Colors.white,
            _selectedColor!,
          ],
        ),
      ),
      child: Padding(
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
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomerColorBar(
                onColorTap: _onColorTap,
                colors: colors,
                selectedColor: _selectedColor!,
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
              BlocProvider(
                create: (context) => GetIt.I<UploadIdCardBloc>(),
                child: IDCardWidget(
                  onIdCardLoaded: _onIdCardFrontSideLoaded,
                  onIdCardUploadStarted: _onIdCardFrontSideUploadStarted,
                  url: widget.customerInput?.idCardFrontSideUrl,
                  title: S.of(context).id_card_front_side,
                  side: IdCardSide.front,
                ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              BlocProvider(
                create: (context) => GetIt.I<UploadIdCardBloc>(),
                child: IDCardWidget(
                  onIdCardLoaded: _onIdCardBackSideLoaded,
                  onIdCardUploadStarted: _onIdCardBackSideUploadStarted,
                  url: widget.customerInput?.idCardBackSideUrl,
                  title: S.of(context).id_card_back_side,
                  side: IdCardSide.back,
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
