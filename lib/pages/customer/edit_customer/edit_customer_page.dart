import 'package:auto_route/auto_route.dart';
import 'package:customer_care/common/dialog.dart';
import 'package:customer_care/generated/l10n.dart';
import 'package:customer_care/pages/customer/edit_customer/edit_customer_bloc.dart';
import 'package:customer_care/pages/customer/edit_customer/setting/edit_seting_view.dart';
import 'package:customer_care/pages/customer/widgets/customer_item_page/customer_form_view.dart';
import 'package:customer_care/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_it/get_it.dart';

class EditCustomerPage extends StatefulWidget implements AutoRouteWrapper {
  const EditCustomerPage({
    Key? key,
    required this.customerId,
  }) : super(key: key);

  final String customerId;

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
  final _formKey = GlobalKey<CustomerFormViewState>();

  bool _isIdCardFrontSideUploading = false;
  bool _isIdCardBackSideUploading = false;

  void _onUploadIdCardFrontSideChange(bool isUploading) {
    setState(() {
      _isIdCardFrontSideUploading = isUploading;
    });
  }

  void _onUploadIdCardBackSideChange(bool isUploading) {
    setState(() {
      _isIdCardBackSideUploading = isUploading;
    });
  }

  void _removeCustomer(BuildContext context) async {
    final result = await showDeleteDialog(
      context,
      S.of(context).remove_customer,
      S.of(context).remove_customer_message,
    );

    if (result != true) return;

    final customerInput = _formKey.currentState!.validateAndGetFormValue();

    if (customerInput == null) return;

    context
        .read<EditCustomerBloc>()
        .add(EditCustomerDeleteCustomerInfoEvent(customerInput.id!));
  }

  void _submitForm(BuildContext context) {
    final customerInput = _formKey.currentState!.validateAndGetFormValue();

    if (customerInput == null) return;

    context
        .read<EditCustomerBloc>()
        .add(EditCustomerSaveCustomerInfoEvent(customerInput));
  }

  @override
  void initState() {
    context
        .read<EditCustomerBloc>()
        .add(EditCustomerFetchCustomerInfoEvent(widget.customerId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditCustomerBloc, EditCustomerState>(
      bloc: context.read<EditCustomerBloc>(),
      listener: (BuildContext context, state) async {
        if (state is EditCustomerLoading) {
          EasyLoading.show();
        } else if (state is EditCustomerLoadedSuccess) {
          await EasyLoading.dismiss();
          context.navigateTo(HomeRoute());
        } else if (state is EditCustomerFetchedSuccess) {
          EasyLoading.dismiss();
        } else if (state is EditCustomerLoadedFailure ||
            state is EditCustomerFetchedFailure) {
          EasyLoading.showError(S.of(context).common_error);
        }
      },
      builder: (context, state) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text(S.of(context).edit_customer_information),
              actions: [
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () => _removeCustomer(context),
                ),
              ],
              bottom: const TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.info),
                  ),
                  Tab(
                    icon: Icon(Icons.settings),
                  )
                ],
              ),
            ),
            body: TabBarView(
              children: [
                BlocBuilder<EditCustomerBloc, EditCustomerState>(
                    builder: (context, state) {
                  if (state is EditCustomerFetchedSuccess) {
                    return CustomerFormView(
                      customerInput: state.customerInput,
                      submitText: S.of(context).save,
                      formKey: _formKey,
                      onUploadIdCardBackSideChange:
                          _onUploadIdCardBackSideChange,
                      onUploadIdCardFrontSideChange:
                          _onUploadIdCardFrontSideChange,
                    );
                  }
                  return CustomerFormView(
                    submitText: S.of(context).save,
                    formKey: _formKey,
                    onUploadIdCardBackSideChange: _onUploadIdCardBackSideChange,
                    onUploadIdCardFrontSideChange:
                        _onUploadIdCardFrontSideChange,
                  );
                }),
                const EditSettingView(),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed:
                  _isIdCardFrontSideUploading || _isIdCardBackSideUploading
                      ? null
                      : () => _submitForm(context),
              child: const Icon(Icons.save),
            ),
          ),
        );
      },
    );
  }
}
