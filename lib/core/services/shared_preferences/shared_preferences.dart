import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static SharedPreferencesService? _singleton;

  static late SharedPreferences _sharedPreferences;

  SharedPreferencesService._() {
    _createSharedPreferences();
  }

  factory SharedPreferencesService() {
    return _singleton ??= SharedPreferencesService._();
  }

  SharedPreferences get instance => _sharedPreferences;

  Future<void> _createSharedPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> setToken(String key, String value) async {
    await _sharedPreferences.setString(key, value);
  }

  Future<String> getToken(String key) async {
    return _sharedPreferences.getString(key) ?? 'no token';
  }
}
