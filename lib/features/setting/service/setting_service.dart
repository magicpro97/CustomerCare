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
  final CollectionReference<User> _customerRef;

  SettingService(
    UserSession userSession,
    FirebaseFirestore firebaseFirestore,
  )   : _customerRef = firebaseFirestore
            .collection('users')
            .withConverter<User>(
                fromFirestore: (snapshot, _) =>
                    User.fromJson(snapshot.data()!),
                toFirestore: (user, _) => user.toJson()),
        super(userSession);

  @override
  Future<void> updateSetting(Setting setting) {
    return _customerRef.doc(userId).update({'setting': setting.toJson()});
  }

  @override
  Stream<Setting> settingStream() {
    return _customerRef.doc(userId).snapshots().map((user) {
      return (user.data() as User).setting;
    });
  }
}
