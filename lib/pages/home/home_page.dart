import 'package:auto_route/auto_route.dart';
import 'package:customer_care/pages/home/home_page_bloc.dart';
import 'package:customer_care/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../features/customer/widgets/customer_list_widget.dart';
import '../../generated/l10n.dart';

class HomePage extends StatelessWidget implements AutoRouteWrapper {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).customers),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocConsumer<HomePageBloc, HomePageState>(
            listener: (BuildContext context, HomePageState state) {},
            builder: (_, state) {
              if (state is HomePageLoading) {
                return const CircularProgressIndicator.adaptive();
              } else if (state is HomePageLoaded) {
                return CustomerListWidget(
                  customers: state.customers,
                );
              }
              return Container();
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.navigateTo(const AddCustomerRoute());
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.I<HomePageBloc>(),
      child: this,
    );
  }
}
