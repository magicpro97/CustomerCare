part of 'splash_bloc.dart';

abstract class SplashState extends Equatable {
  const SplashState();
}

class SplashInitial extends SplashState {
  @override
  List<Object> get props => [];
}

class SplashUserSignedIn extends SplashState {
  @override
  List<Object> get props => [];
}

class SplashUserUnsignedIn extends SplashState {
  @override
  List<Object> get props => [];
}
