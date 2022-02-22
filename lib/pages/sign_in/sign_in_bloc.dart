import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:customer_care/features/authentication/user_session.dart';
import 'package:customer_care/features/user/repository/user_repository.dart';
import 'package:customer_care/features/user/setting.dart';
import 'package:customer_care/features/user/user.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IUserRepository _userRepository;
  final UserSession _userSession;

  SignInBloc(
    this._userRepository, this._userSession,
  ) : super(SignInInitial()) {
    on<SignInEvent>((event, emit) async {
      if (event is SignInWithGoogleEvent) {
        try {
          final userCredential = await _userSession.signInWithGoogle();
          final email = userCredential.user?.email;
          if (email != null) {
            if (!(await _userRepository.isExist(email))) {
              await _createUser(userCredential);
            }
            emit(SignInSuccess());
          } else {
            emit(SignInFail());
          }
        } catch (e) {
          emit(SignInFail());
        }
      }
    });
  }

  Future<void> _createUser(UserCredential userCredential) {
    final user = User(
        id: const Uuid().v1(),
        name: userCredential.user!.displayName ?? '',
        email: userCredential.user!.email ?? '',
        isActive: true,
        updatedAt: DateTime.now(),
        createdAt: DateTime.now(),
        setting: Setting(
          enableRemindContact: true,
          remindContactDayAfterNumber: 3,
        ));
    _userSession.user = user;
    return _userRepository.create(user);
  }
}
