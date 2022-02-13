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
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SplashPage());
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: HomePage(key: args.key, tabIndex: args.tabIndex));
    },
    AddCustomerRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const AddCustomerPage());
    },
    EditCustomerRoute.name: (routeData) {
      final args = routeData.argsAs<EditCustomerRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: EditCustomerPage(
              key: args.key, customerInput: args.customerInput));
    },
    SignInRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SignInPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(HomeRoute.name, path: '/home-page'),
        RouteConfig(AddCustomerRoute.name, path: '/add-customer-page'),
        RouteConfig(EditCustomerRoute.name, path: '/edit-customer-page'),
        RouteConfig(SignInRoute.name, path: '/sign-in-page')
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({Key? key, int tabIndex = 0})
      : super(HomeRoute.name,
            path: '/home-page',
            args: HomeRouteArgs(key: key, tabIndex: tabIndex));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key, this.tabIndex = 0});

  final Key? key;

  final int tabIndex;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, tabIndex: $tabIndex}';
  }
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
  EditCustomerRoute({Key? key, required CustomerInput customerInput})
      : super(EditCustomerRoute.name,
            path: '/edit-customer-page',
            args:
                EditCustomerRouteArgs(key: key, customerInput: customerInput));

  static const String name = 'EditCustomerRoute';
}

class EditCustomerRouteArgs {
  const EditCustomerRouteArgs({this.key, required this.customerInput});

  final Key? key;

  final CustomerInput customerInput;

  @override
  String toString() {
    return 'EditCustomerRouteArgs{key: $key, customerInput: $customerInput}';
  }
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}
