import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;

  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  FirebaseStorage get firebaseStorage => FirebaseStorage.instance;

  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();
}
