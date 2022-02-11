import 'package:auto_route/auto_route.dart';
import 'package:customer_care/common/dialog.dart';
import 'package:customer_care/features/notification/app_notification.dart';
import 'package:customer_care/generated/l10n.dart';
import 'package:customer_care/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:timezone/data/latest.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _appRouter = GetIt.I<AppRouter>();

  @override
  void initState() {
    super.initState();
    initializeTimeZones();

    AppNotification.configure(
      onDidReceiveLocalNotification: _onDidReceiveLocalNotification,
      onSelectNotification: _onSelectNotification,
    );
  }

  void _onDidReceiveLocalNotification(
    int id,
    String? title,
    String? body,
    String? payload,
  ) {
    showRedirectDialog(context, '', '', [HomeRoute()], payload);
  }

  void _onSelectNotification(String? payload) {
    context.router.replaceAll([HomeRoute()]);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp.router(
        onGenerateTitle: (context) => S.of(context).app_name,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        builder: EasyLoading.init(
          builder: (context, widget) {
            ScreenUtil.setContext(context);
            return MediaQuery(
              //Setting font does not change with system font size
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,
            );
          },
        ),
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
      ),
    );
  }
}
