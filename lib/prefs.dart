import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<void> setString(String key, String value) async {
    await _prefs!.setString(key, value);
  }

  static Future<String?> getString(String key) async {
    return _prefs!.getString(key);
  }

  static Future<void> setBool(String key, bool value) async {
    await _prefs!.setBool(key, value);
  }

  static Future<bool?> getBool(String key) async {
    return _prefs!.getBool(key);
  }

  static Future<void> setInt(String key, int value) async {
    await _prefs!.setInt(key, value);
  }

  static Future<int?> getInt(String key) async {
    return _prefs!.getInt(key);
  }

  static Future<void> setDouble(String key, double value) async {
    await _prefs!.setDouble(key, value);
  }

  static Future<double?> getDouble(String key) async {
    return _prefs!.getDouble(key);
  }

  static Future<void> setStringList(String key, List<String> value) async {
    await _prefs!.setStringList(key, value);
  }

  static Future<List<String>?> getStringList(String key) async {
    return _prefs!.getStringList(key);
  }

  static Future<void> remove(String key) async {
    await _prefs!.remove(key);
  }

  static Future<void> clear() async {
    await _prefs!.clear();
  }
}
