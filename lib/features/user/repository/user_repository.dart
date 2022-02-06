import 'package:customer_care/features/user/service/user_service.dart';
import 'package:injectable/injectable.dart';

import '../user.dart';

abstract class IUserRepository {
  Future<void> create(User user);

  Future<void> deactivate(String userId);

  Future<void> update(User user);

  Future<bool> isExist(String email);

  Future<User?> findByEmail(String email);
}

@Singleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final IUserService _userService;

  UserRepository(this._userService);

  @override
  Future<void> create(User user) {
    return _userService.insertOrReplace(user);
  }

  @override
  Future<void> deactivate(String userId) {
    return _userService.deactivate(userId);
  }

  @override
  Future<void> update(User user) {
    return _userService.update(user);
  }

  @override
  Future<bool> isExist(String email) async {
    return (await _userService.findByEmail(email)).size > 0;
  }

  @override
  Future<User?> findByEmail(String email) async {
    final users = await _userService.findByEmail(email);
    if (users.size < 1) return null;
    return users.docs.map((e) => e.data()).toList()[0];
  }
}
