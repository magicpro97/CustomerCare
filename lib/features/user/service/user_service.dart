import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../user.dart';

abstract class IUserService {
  Future<void> insertOrReplace(User user);

  Future<void> deactivate(String userId);

  Future<void> update(User user);

  Future<QuerySnapshot<User>> findByEmail(String email);
}

@Singleton(as: IUserService)
class UserService implements IUserService {
  final CollectionReference _userCollectionRef;

  UserService(FirebaseFirestore firebaseFirestore)
      : _userCollectionRef = firebaseFirestore.collection('users');

  @override
  Future<void> deactivate(String userId) {
    return _userCollectionRef.userRef(userId).update({
      'is_active': false,
    });
  }

  @override
  Future<void> insertOrReplace(User user) {
    return _userCollectionRef.userRef(user.id).set(user);
  }

  @override
  Future<void> update(User user) {
    return _userCollectionRef.userRef(user.id).update(user.toJson());
  }

  @override
  Future<QuerySnapshot<User>> findByEmail(String email) {
    return _userCollectionRef
        .userCollection()
        .where('email', isEqualTo: email)
        .get();
  }
}

extension CollectionRefX on CollectionReference {
  CollectionReference<User> userCollection() {
    return withConverter<User>(
      fromFirestore: (snapshot, _) => User.fromJson(snapshot.data()!),
      toFirestore: (user, _) => user.toJson(),
    );
  }

  DocumentReference<User> userRef(String userId) {
    return userCollection().doc(userId);
  }
}
