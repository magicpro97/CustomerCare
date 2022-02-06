import 'package:customer_care/features/authentication/user_session.dart';

abstract class Service {
  final UserSession _userSession;

  Service(this._userSession);

  String get userId => _userSession.user!.id;
}
