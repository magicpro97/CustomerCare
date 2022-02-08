import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:customer_care/features/authentication/user_session.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'splash_event.dart';
part 'splash_state.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final UserSession _userSession;

  SplashBloc(this._userSession) : super(SplashInitial()) {
    on<SplashEvent>((event, emit) {
      if (event is SplashUserSessionCheckEvent) {
        if (_userSession.user != null) {
          emit(SplashUserSignedIn());
        } else {
          emit(SplashUserUnsignedIn());
        }
      }
    });
  }
}
