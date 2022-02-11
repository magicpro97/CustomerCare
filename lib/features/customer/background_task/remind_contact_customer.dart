import 'package:background_fetch/background_fetch.dart';

class RemindContactCustomerBackgroundTask {
  static String taskId = "com.customercare.remindcontactcustomer";

  static Future<void> start({
    required Function() onFetch,
  }) async {
    await BackgroundFetch.configure(
        BackgroundFetchConfig(
          minimumFetchInterval: 15,
          stopOnTerminate: false,
          enableHeadless: true,
          requiresBatteryNotLow: false,
          requiresCharging: false,
          requiresStorageNotLow: false,
          requiresDeviceIdle: false,
          requiredNetworkType: NetworkType.NONE,
        ), (String taskId) {
      if (taskId == RemindContactCustomerBackgroundTask.taskId) {
        onFetch.call();
      }
      BackgroundFetch.finish(taskId);
    }, (timeout) {
      BackgroundFetch.finish(taskId);
    });

    await BackgroundFetch.scheduleTask(TaskConfig(
      delay: 5000,
      taskId: taskId,
      periodic: true,
    ));
  }
}
