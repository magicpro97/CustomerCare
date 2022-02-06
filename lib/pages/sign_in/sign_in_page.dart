import 'package:auto_route/auto_route.dart';
import 'package:customer_care/generated/l10n.dart';
import 'package:customer_care/pages/sign_in/sign_in_bloc.dart';
import 'package:customer_care/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:get_it/get_it.dart';

class SignInPage extends StatelessWidget with AutoRouteWrapper {
  const SignInPage({Key? key}) : super(key: key);

  void _signInWithGoogle(BuildContext context) {
    context.read<SignInBloc>().add(const SignInWithGoogleEvent());
  }

  void _stateListener(BuildContext context, SignInState state) {
    if (state is SignInSuccess) {
      context.navigateTo(const HomeRoute());
    } else if (state is SignInFail) {
      EasyLoading.showError(S.of(context).common_error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: context.read<SignInBloc>(),
      listener: _stateListener,
      child: Scaffold(
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  S.of(context).app_name,
                  style: Theme.of(context).textTheme.headline3,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Sign in with',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SignInButton(
                      Buttons.Google,
                      onPressed: () => _signInWithGoogle(context),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.I<SignInBloc>(),
      child: this,
    );
  }
}
