import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class CacheNotification {
  final SharedPreferences _sharedPreferences;

  CacheNotification(this._sharedPreferences);

  void add(String id) {
    if (!_sharedPreferences.containsKey(id)) {
      _sharedPreferences.setInt(id, DateTime.now().millisecondsSinceEpoch);
    }
  }

  int? get(String id) {
    return _sharedPreferences.getInt(id);
  }
}