import 'package:customer_care/features/setting/remind_contact_customer_setting.dart';
import 'package:customer_care/features/setting/service/setting_service.dart';
import 'package:injectable/injectable.dart';

import '../../user/setting.dart';

abstract class ISettingRepository {
  Future<void> updateRemindContactToCustomer(
      RemindContactCustomerSetting remindContactCustomerSetting);

  Stream<Setting> get setting$;
}

@Singleton(as: ISettingRepository)
class SettingRepository extends ISettingRepository {
  final ISettingService _settingService;

  SettingRepository(this._settingService);

  @override
  Future<void> updateRemindContactToCustomer(
      RemindContactCustomerSetting remindContactCustomerSetting) {
    return _settingService
        .updateSetting(remindContactCustomerSetting.toSetting());
  }

  @override
  Stream<Setting> get setting$ => _settingService.settingStream();
}

extension RemindContactCustomerSettingX on RemindContactCustomerSetting {
  Setting toSetting() {
    return Setting.fromJson(toJson());
  }
}
