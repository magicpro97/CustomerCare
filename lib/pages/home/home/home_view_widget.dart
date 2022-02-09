import 'package:customer_care/dimen.dart';
import 'package:customer_care/features/authentication/user_session.dart';
import 'package:customer_care/features/customer/customer.dart';
import 'package:customer_care/features/user/user.dart';
import 'package:customer_care/generated/l10n.dart';
import 'package:customer_care/pages/home/home/home_view_bloc.dart';
import 'package:customer_care/pages/home/home/widgets/customer_contact_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomeViewWidget extends StatelessWidget {
  final User user = GetIt.I<UserSession>().user!;

  HomeViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.all(kPaddingTop),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                S.of(context).hello(user.name),
                style: textTheme.titleLarge,
              ),
              Text(
                S.of(context).blessing,
                style: textTheme.titleMedium,
              ),
            ],
          ),
          Card(
            margin: EdgeInsets.only(top: kPaddingTop),
            child: Padding(
              padding: EdgeInsets.all(kPaddingTop * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  StreamBuilder<List<Customer>>(
                      stream: context.read<HomeViewBloc>().remindCustomer$(
                          user.setting.remindContactDayAfterNumber),
                      builder: (context, snapshot) {
                        int count = 0;
                        if (snapshot.hasData) {
                          count = snapshot.data!.length;
                        }

                        return Text(
                          S
                              .of(context)
                              .you_have_n_customer_need_to_contact_today(count),
                          style: textTheme.titleSmall,
                        );
                      }),
                  Text(
                    S.of(context).make_phone_call_instruction,
                    style: textTheme.bodySmall,
                  ),
                  StreamBuilder<List<Customer>>(
                    stream: context.read<HomeViewBloc>().remindCustomer$(3),
                    builder: (_, snapshot) {
                      if (!snapshot.hasData) {
                        return Container();
                      }

                      return CustomerContactListWidget(
                          customers: snapshot.data!);
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
