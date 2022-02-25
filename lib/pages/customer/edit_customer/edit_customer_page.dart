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
import 'package:image_picker/image_picker.dart';

class EditCustomerPage extends StatelessWidget implements AutoRouteWrapper {
  const EditCustomerPage({
    Key? key,
    required this.customerInput,
  }) : super(key: key);

  final CustomerInput customerInput;

  void _submitForm(BuildContext context, CustomerInput input) {
    context.read<EditCustomerBloc>().add(EditCustomerSaveEvent(customerInput));
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
        .add(EditCustomerDeleteCustomerEvent(customerId));
  }

  void _onIdCardFrontSideTap(XFile? image) {}

  void _onIdCardBackSideTap(XFile? image) {}

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: context.read<EditCustomerBloc>(),
      listener: (BuildContext context, state) async {
        if (state is EditCustomerLoading) {
          EasyLoading.show();
        } else if (state is EditCustomerLoadedSuccess) {
          await EasyLoading.dismiss();
          context.navigateTo(HomeRoute());
        } else if (state is EditCustomerLoadedFailure) {
          EasyLoading.showError(S.of(context).common_error);
        }
      },
      child: CustomerFormPage(
        onSubmitForm: (input) => _submitForm(context, input),
        onIdCardBackSideTap: _onIdCardBackSideTap,
        onIdCardFrontSideTap: _onIdCardFrontSideTap,
        title: S.of(context).edit_customer_information,
        submitText: S.of(context).save,
        customerInput: customerInput,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => _removeCustomer(context, customerInput.id!),
          ),
        ],
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.I<EditCustomerBloc>(),
      child: this,
    );
  }
}
