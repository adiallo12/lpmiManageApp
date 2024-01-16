import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static SharedPreferencesHelper? _instance;
  SharedPreferences? _preferences;

  SharedPreferencesHelper._internal() {
    initialize();
  }

  factory SharedPreferencesHelper() {
    _instance ??= SharedPreferencesHelper._internal();
    return _instance!;
  }

  Future<void> initialize() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future<void> setEmail(String email) async {
    await _preferences?.setString('email', email);
  }

  String? getEmail() {
    return _preferences?.getString('email');
  }

  Future<void> setUser(String user) async {
    await _preferences?.setString('user', user);
  }

  String? getUser() {
    return _preferences?.getString('user');
  }

  Future<void> clear() async {
    await _preferences?.clear();
  }
}
