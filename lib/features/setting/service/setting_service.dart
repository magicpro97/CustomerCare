import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:customer_care/common/service.dart';
import 'package:customer_care/features/user/setting.dart';
import 'package:customer_care/features/user/user.dart';
import 'package:injectable/injectable.dart';

abstract class ISettingService {
  Future<void> updateSetting(Setting setting);

  Stream<Setting> settingStream();
}

@Singleton(as: ISettingService)
class SettingService extends AppService implements ISettingService {
  SettingService(FirebaseFirestore firebaseFirestore)
      : super(firebaseFirestore);

  @override
  Future<void> updateSetting(Setting setting) {
    return userReference.update({'setting': setting.toJson()});
  }

  @override
  Stream<Setting> settingStream() {
    return userReference.snapshots().map((user) {
      return (user.data() as User).setting;
    });
  }
}
