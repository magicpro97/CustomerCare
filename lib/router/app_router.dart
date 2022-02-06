import 'package:auto_route/auto_route.dart';
import 'package:customer_care/features/customer/customer.dart';
import 'package:customer_care/pages/customer/add_customer/add_customer_page.dart';
import 'package:customer_care/pages/customer/edit_customer/edit_customer_page.dart';
import 'package:customer_care/pages/home/home_page.dart';
import 'package:customer_care/pages/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage),
    AutoRoute(page: AddCustomerPage),
    AutoRoute(page: EditCustomerPage),
    AutoRoute(page: SignInPage, initial: true),
  ],
)
@singleton
class AppRouter extends _$AppRouter {}
