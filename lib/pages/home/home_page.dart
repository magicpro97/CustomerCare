import 'package:auto_route/auto_route.dart';
import 'package:customer_care/generated/l10n.dart';
import 'package:customer_care/pages/home/customer/customer_view_bloc.dart';
import 'package:customer_care/pages/home/customer/customer_view_widget.dart';
import 'package:customer_care/pages/home/home/home_view_bloc.dart';
import 'package:customer_care/pages/home/home/home_view_widget.dart';
import 'package:customer_care/pages/home/home_page_bloc.dart';
import 'package:customer_care/pages/home/setting/setting_view_bloc.dart';
import 'package:customer_care/pages/home/setting/setting_view_widget.dart';
import 'package:customer_care/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatefulWidget implements AutoRouteWrapper {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.I<HomePageBloc>(),
      child: this,
    );
  }
}

class _HomePageState extends State<HomePage> {
  int tabIndex = 0;

  void _onTabChange(int index) {
    setState(() {
      tabIndex = index;
    });
  }

  void _navigateToAddCustomerPage(BuildContext context) {
    context.navigateTo(const AddCustomerRoute());
  }

  String _getPageTitle(BuildContext context, int index) {
    switch (index) {
      case 0:
        return S.of(context).home;
      case 1:
        return S.of(context).customer;
      case 2:
        return S.of(context).setting;
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_getPageTitle(context, tabIndex)),
      ),
      body: SizedBox(
        width: double.infinity,
        child: IndexedStack(
          index: tabIndex,
          children: [
            BlocProvider(
              create: (_) => GetIt.I<HomeViewBloc>(),
              child: HomeViewWidget(),
            ),
            BlocProvider(
              create: (_) => GetIt.I<CustomerViewBloc>(),
              child: const CustomerViewWidget(),
            ),
            BlocProvider(
              create: (_) => GetIt.I<SettingViewBloc>(),
              child: const SettingViewWidget(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTabChange,
        currentIndex: tabIndex,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: _getPageTitle(context, 0),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: _getPageTitle(context, 1),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: _getPageTitle(context, 2),
          ),
        ],
      ),
      floatingActionButton: tabIndex == 1
          ? FloatingActionButton(
              onPressed: () => _navigateToAddCustomerPage(context),
              child: const Icon(Icons.add),
            )
          : null,
    );
  }
}
