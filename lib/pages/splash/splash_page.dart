import 'package:auto_route/auto_route.dart';
import 'package:customer_care/pages/splash/splash_bloc.dart';
import 'package:customer_care/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class SplashPage extends StatefulWidget with AutoRouteWrapper {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.I<SplashBloc>(),
      child: this,
    );
  }
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _init();
    });
  }

  _init() {
    context.read<SplashBloc>()
      ..add(const SplashUserSessionCheckEvent())
      ..stream.listen((state) {
        if (state is SplashUserSignedIn) {
          context.replaceRoute(const HomeRoute());
        } else if (state is SplashUserUnsignedIn) {
          context.replaceRoute(const SignInRoute());
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
