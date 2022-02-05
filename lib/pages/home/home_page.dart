import 'package:auto_route/auto_route.dart';
import 'package:customer_care/dimen.dart';
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
            BlocConsumer<HomePageBloc, HomePageState>(
              bloc: context.read<HomePageBloc>(),
              listener: (BuildContext context, HomePageState state) {},
              builder: (_, state) {
                return StreamBuilder<List<Customer>>(
                  stream: context.read<HomePageBloc>().customer$,
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const CircularProgressIndicator.adaptive();
                    }

                    return Expanded(
                      child: CustomerListWidget(
                        padding: EdgeInsets.fromLTRB(
                          kPaddingLeft,
                          kPaddingTop,
                          kPaddingRight,
                          0,
                        ),
                        customers: snapshot.data!,
                        onTap: (index) => _onCustomerItemTapped(
                            context, snapshot.data!, index),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _navigateToAddCustomerPage(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _navigateToAddCustomerPage(BuildContext context) {
    context.navigateTo(const AddCustomerRoute());
  }

  void _onCustomerItemTapped(
    BuildContext context,
    List<Customer> customers,
    int index,
  ) {
    context.navigateTo(EditCustomerRoute(customer: customers[index]));
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.I<HomePageBloc>(),
      child: this,
    );
  }
}
