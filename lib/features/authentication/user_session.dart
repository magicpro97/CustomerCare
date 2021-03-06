import 'dart:convert';

import 'package:customer_care/features/authentication/google_provider.dart';
import 'package:customer_care/features/user/repository/user_repository.dart';
import 'package:customer_care/features/user/user.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class UserSession {
  final FirebaseAuth _firebaseAuth;
  final IUserRepository _userRepository;
  final GoogleProvider _googleProvider;
  final SharedPreferences _sharedPreferences;

  User? _user;

  User? get user {
    final userString = _sharedPreferences.getString("user");
    if (userString != null) {
      user = User.fromJson(jsonDecode(userString));
    }
    return _user;
  }

  set user(User? user) {
    _sharedPreferences.setString("user", jsonEncode(user!.toJson()));
    _user = user;
  }

  AuthProvider? authProvider;

  UserSession(
    this._firebaseAuth,
    this._userRepository,
    this._googleProvider,
    this._sharedPreferences,
  ) {
    final email = _firebaseAuth.currentUser?.email;
    if (email != null) {
      _userRepository.findByEmail(email).then((value) => user = value);
    }

    _firebaseAuth.authStateChanges().listen((firebaseUser) async {
      if (firebaseUser != null &&
          firebaseUser.email != null &&
          firebaseUser.email!.isNotEmpty) {
        user = await _userRepository.findByEmail(firebaseUser.email!);
      } else {
        user = null;
      }
    });

    _firebaseAuth.idTokenChanges().listen((firebaseUser) async {
      if (firebaseUser != null &&
          firebaseUser.email != null &&
          firebaseUser.email!.isNotEmpty) {
        user = await _userRepository.findByEmail(firebaseUser.email!);
      } else {
        user = null;
      }
    });
  }

  Future<UserCredential> signInWithGoogle() async {
    final credential = await _googleProvider.signIn();
    authProvider = AuthProvider.google;
    return credential;
  }

  Future<void> signOut() async {
    if (authProvider == AuthProvider.google) {
      await _googleProvider.signOut();
    }
    user = null;
    authProvider = null;
  }
}

enum AuthProvider {
  google,
}
