import 'package:auto_route/auto_route.dart';
import 'package:customer_care/common/dialog.dart';
import 'package:customer_care/generated/l10n.dart';
import 'package:customer_care/pages/customer/edit_customer/edit_customer_bloc.dart';
import 'package:customer_care/pages/customer/widgets/customer_item_page/customer_form_page.dart';
import 'package:customer_care/pages/customer/widgets/customer_item_page/customer_input.dart';
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
  void _submitForm(BuildContext context, CustomerInput input) {
    context
        .read<EditCustomerBloc>()
        .add(EditCustomerSaveCustomerInfoEvent(input));
  }

  void _removeCustomer(BuildContext context, String customerId) async {
    final result = await showDeleteDialog(
      context,
      S.of(context).remove_customer,
      S.of(context).remove_customer_message,
    );

    if (result != true) return;

    context
        .read<EditCustomerBloc>()
        .add(EditCustomerDeleteCustomerInfoEvent(customerId));
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
        if (state is EditCustomerFetchedSuccess) {
          return CustomerFormPage(
            onSubmitForm: (input) => _submitForm(context, input),
            title: S.of(context).edit_customer_information,
            submitText: S.of(context).save,
            customerInput: state.customerInput,
            actions: [
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () =>
                    _removeCustomer(context, state.customerInput.id!),
              ),
            ],
          );
        }

        return CustomerFormPage(
          onSubmitForm: (input) => _submitForm(context, input),
          title: S.of(context).edit_customer_information,
          submitText: S.of(context).save,
          customerInput: null,
          actions: const [
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: null,
            ),
          ],
        );
      },
    );
  }
}
