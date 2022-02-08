part of 'splash_bloc.dart';

abstract class SplashEvent extends Equatable {
  const SplashEvent();
}

class SplashUserSessionCheckEvent extends SplashEvent {
  const SplashUserSessionCheckEvent();

  @override
  List<Object?> get props => [];
}
