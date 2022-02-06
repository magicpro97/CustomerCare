import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:customer_care/features/authentication/google_provider.dart';
import 'package:customer_care/features/user/repository/user_repository.dart';
import 'package:customer_care/features/user/user.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'sign_in_event.dart';

part 'sign_in_state.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final GoogleProvider _googleProvider;
  final IUserRepository _userRepository;

  SignInBloc(
    this._googleProvider,
    this._userRepository,
  ) : super(SignInInitial()) {
    on<SignInEvent>((event, emit) async {
      if (event is SignInWithGoogleEvent) {
        try {
          final userCredential = await _googleProvider.signIn();
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
    );
    return _userRepository.create(user);
  }
}
