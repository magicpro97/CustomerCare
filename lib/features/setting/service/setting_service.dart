import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:customer_care/common/service.dart';
import 'package:customer_care/features/authentication/user_session.dart';
import 'package:customer_care/features/user/user.dart';
import 'package:injectable/injectable.dart';

import '../../user/setting.dart';

abstract class ISettingService extends Service {
  ISettingService(UserSession userSession) : super(userSession);

  Future<void> updateSetting(Setting setting);

  Stream<Setting> settingStream();
}

@Singleton(as: ISettingService)
class SettingService extends ISettingService {
  final CollectionReference _customerRef;

  SettingService(
    UserSession userSession,
    FirebaseFirestore firebaseFirestore,
  )   : _customerRef = firebaseFirestore.collection('users'),
        super(userSession);

  @override
  Future<void> updateSetting(Setting setting) {
    return _customerRef.doc(userId).update({'setting': setting.toJson()});
  }

  @override
  Stream<Setting> settingStream() {
    return _customerRef
        .doc(userId)
        .snapshots()
        .map((user) => (user.data() as User).setting);
  }
}
