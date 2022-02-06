import 'package:customer_care/features/user/repository/user_repository.dart';
import 'package:customer_care/features/user/user.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';

@singleton
class UserSession {
  final FirebaseAuth _firebaseAuth;
  final IUserRepository _userRepository;

  User? _user;

  UserSession(
    this._firebaseAuth,
    this._userRepository,
  ) {
    _firebaseAuth.authStateChanges().listen((firebaseUser) async {
      if (firebaseUser != null &&
          firebaseUser.email != null &&
          firebaseUser.email!.isNotEmpty) {
        _user = await _userRepository.findByEmail(firebaseUser.email!);
      } else {
        _user = null;
      }
    });

    _firebaseAuth.idTokenChanges().listen((firebaseUser) async {
      if (firebaseUser != null &&
          firebaseUser.email != null &&
          firebaseUser.email!.isNotEmpty) {
        _user = await _userRepository.findByEmail(firebaseUser.email!);
      } else {
        _user = null;
      }
    });
  }

  User? get user => _user;
}
