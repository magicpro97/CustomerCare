import 'package:auto_route/auto_route.dart';
import 'package:customer_care/features/customer/customer.dart';
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
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: BlocConsumer<HomePageBloc, HomePageState>(
                bloc: context.read<HomePageBloc>(),
                listener: (BuildContext context, HomePageState state) {},
                builder: (_, state) {
                  return StreamBuilder<List<Customer>>(
                    stream: context.read<HomePageBloc>().customer$,
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return const CircularProgressIndicator.adaptive();
                      }

                      return CustomerListWidget(
                        customers: snapshot.data!,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
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
