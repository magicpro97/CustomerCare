part of 'sign_in_bloc.dart';

abstract class SignInEvent extends Equatable {
  const SignInEvent();
}

class SignInWithGoogleEvent extends SignInEvent {
  const SignInWithGoogleEvent();

  @override
  List<Object?> get props => [];
}
