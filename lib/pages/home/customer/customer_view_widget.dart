import 'package:auto_route/auto_route.dart';
import 'package:customer_care/dimen.dart';
import 'package:customer_care/pages/home/customer/customer_view_bloc.dart';
import 'package:customer_care/pages/home/customer/widgets/customer_item.dart';
import 'package:customer_care/pages/home/customer/widgets/customer_list_widget.dart';
import 'package:customer_care/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerViewWidget extends StatelessWidget {
  const CustomerViewWidget({Key? key}) : super(key: key);

  void _onCustomerItemTapped(
    BuildContext context,
    List<CustomerItem> customers,
    int index,
  ) {
    context.navigateTo(EditCustomerRoute(customerId: customers[index].id));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocBuilder<CustomerViewBloc, CustomerViewState>(
          bloc: context.read<CustomerViewBloc>(),
          builder: (_, state) {
            return StreamBuilder<List<CustomerItem>>(
              stream: context.read<CustomerViewBloc>().customerItems$,
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
                    onTap: (index) =>
                        _onCustomerItemTapped(context, snapshot.data!, index),
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
