// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    AddCustomerRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const AddCustomerPage());
    },
    EditCustomerRoute.name: (routeData) {
      final args = routeData.argsAs<EditCustomerRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: EditCustomerPage(key: args.key, customer: args.customer));
    },
    SignInRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SignInPage());
    }
  };

  @override
  List<RouteConfig> get routes =>
      [
        RouteConfig(HomeRoute.name, path: '/home-page'),
        RouteConfig(AddCustomerRoute.name, path: '/add-customer-page'),
        RouteConfig(EditCustomerRoute.name, path: '/edit-customer-page'),
        RouteConfig(SignInRoute.name, path: '/')
      ];
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [AddCustomerPage]
class AddCustomerRoute extends PageRouteInfo<void> {
  const AddCustomerRoute()
      : super(AddCustomerRoute.name, path: '/add-customer-page');

  static const String name = 'AddCustomerRoute';
}

/// generated route for
/// [EditCustomerPage]
class EditCustomerRoute extends PageRouteInfo<EditCustomerRouteArgs> {
  EditCustomerRoute({Key? key, required Customer customer})
      : super(EditCustomerRoute.name,
            path: '/edit-customer-page',
            args: EditCustomerRouteArgs(key: key, customer: customer));

  static const String name = 'EditCustomerRoute';
}

class EditCustomerRouteArgs {
  const EditCustomerRouteArgs({this.key, required this.customer});

  final Key? key;

  final Customer customer;

  @override
  String toString() {
    return 'EditCustomerRouteArgs{key: $key, customer: $customer}';
  }
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/');

  static const String name = 'SignInRoute';
}
