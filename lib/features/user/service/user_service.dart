import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:customer_care/common/service.dart';
import 'package:injectable/injectable.dart';

import '../user.dart';

abstract class IUserService {
  Future<void> insertOrReplace(User user);

  Future<void> deactivate(String userId);

  Future<void> update(User user);

  Future<QuerySnapshot<User>> findByEmail(String email);
}

@Singleton(as: IUserService)
class UserService extends AppService implements IUserService {
  UserService(FirebaseFirestore firebaseFirestore) : super(firebaseFirestore);

  @override
  Future<void> deactivate(String userId) {
    return userReference.update({
      'is_active': false,
    });
  }

  @override
  Future<void> insertOrReplace(User user) {
    return userReference.set(user);
  }

  @override
  Future<void> update(User user) {
    return userReference.update(user.toJson());
  }

  @override
  Future<QuerySnapshot<User>> findByEmail(String email) {
    return userReference.parent.where('email', isEqualTo: email).get();
  }
}
