import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  static const String nameKey = 'username';

  static Future<String?> getUserName() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(nameKey);
  }

  static Future<bool> setUserName(String userName) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(nameKey, userName);
  }
}
