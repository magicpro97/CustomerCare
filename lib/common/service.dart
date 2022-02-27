import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:customer_care/features/authentication/user_session.dart';
import 'package:customer_care/features/user/user.dart';
import 'package:get_it/get_it.dart';

abstract class AppService {
  final CollectionReference<User> userCollectionReference;

  AppService(FirebaseFirestore firebaseFirestore)
      : userCollectionReference =
            firebaseFirestore.collection("users").withConverter<User>(
                  fromFirestore: (doc, _) => User.fromJson(doc.data()!),
                  toFirestore: (data, _) => data.toJson(),
                );

  DocumentReference<User> get userReference =>
      userCollectionReference.doc(userId);

  String get userId => GetIt.I<UserSession>().user!.id;
}

abstract class CRUDService<T> extends AppService {
  CRUDService(FirebaseFirestore firebaseFirestore) : super(firebaseFirestore);

  T fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson(T data);

  String get collection => "";

  CollectionReference<T> get collectionReference =>
      userReference.collection(collection).withConverter<T>(
            fromFirestore: (doc, _) => fromJson(doc.data()!),
            toFirestore: (data, _) => toJson(data),
          );

  Future<T?> findById(String id) async {
    final result = await collectionReference.doc(id).get();

    return result.data();
  }
}
