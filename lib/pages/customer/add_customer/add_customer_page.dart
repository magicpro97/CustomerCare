import 'package:auto_route/auto_route.dart';
import 'package:customer_care/generated/l10n.dart';
import 'package:customer_care/pages/customer/widgets/customer_item_page/customer_form_page.dart';
import 'package:customer_care/pages/customer/widgets/customer_item_page/customer_input.dart';
import 'package:customer_care/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_it/get_it.dart';

import 'add_customer_bloc.dart';

class AddCustomerPage extends StatelessWidget with AutoRouteWrapper {
  const AddCustomerPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.I<AddCustomerBloc>(),
      child: this,
    );
  }

  void _submitForm(BuildContext context, CustomerInput input) {
    context.read<AddCustomerBloc>().add(AddCustomerCreateEvent(input));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: context.read<AddCustomerBloc>(),
      listener: (BuildContext context, state) {
        if (state is AddCustomerLoading) {
          EasyLoading.show();
        } else if (state is AddCustomerLoadedSuccess) {
          EasyLoading.dismiss();
          context.navigateNamedTo(HomeRoute().path);
        } else if (state is AddCustomerLoadedFail) {
          EasyLoading.showError(S.of(context).common_error);
        }
      },
      child: CustomerFormPage(
        title: S.of(context).add_new_a_customer,
        onSubmitForm: (input) => _submitForm(context, input),
      ),
    );
  }
}
