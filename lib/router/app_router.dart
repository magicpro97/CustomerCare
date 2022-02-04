import 'package:auto_route/auto_route.dart';
import 'package:customer_care/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
  ],
)
@singleton
class AppRouter extends _$AppRouter {}
