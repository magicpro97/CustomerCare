import 'package:customer_care/features/customer/customer.dart';
import 'package:customer_care/generated/l10n.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

class AppNotification {
  static const _channelId = 'com.customercare.app';
  static const _channelName = 'CustomerCare';
  static const _channelDescription = 'CustomerCareDescription';

  static final _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static Future<void> configure({
    required Function(int, String?, String?, String?)
        onDidReceiveLocalNotification,
    required Function(String?) onSelectNotification,
  }) async {
    const initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');
    final initializationSettingsIOS = IOSInitializationSettings(
      requestSoundPermission: false,
      requestBadgePermission: false,
      requestAlertPermission: false,
      onDidReceiveLocalNotification: onDidReceiveLocalNotification,
    );
    final initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    await _flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: onSelectNotification);

    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

  static Future<void> createScheduleNotification(
    int id,
    String title,
    String body,
    tz.TZDateTime scheduledDate,
    String? groupKey,
  ) {
    return _flutterLocalNotificationsPlugin.zonedSchedule(
      id,
      title,
      body,
      scheduledDate,
      NotificationDetails(
        android: AndroidNotificationDetails(
          _channelId,
          _channelName,
          channelDescription: _channelDescription,
          importance: Importance.max,
          priority: Priority.high,
          setAsGroupSummary: true,
          groupKey: groupKey,
        ),
        iOS: IOSNotificationDetails(
          threadIdentifier: groupKey,
        ),
      ),
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
    );
  }

  static Future<void> createReminderContactCustomerNotification(
    int id,
    Customer customer,
    DateTime remindDate,
  ) {
    return createScheduleNotification(
      id,
      S.current.remind,
      S.current.remind_contact_to_customer_message(customer.name),
      tz.TZDateTime.from(remindDate, tz.local),
      _channelId,
    );
  }

  static Future<void> cancel(int id) {
    return _flutterLocalNotificationsPlugin.cancel(id);
  }
}
