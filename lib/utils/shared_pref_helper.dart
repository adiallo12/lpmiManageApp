import 'package:shared_preferences/shared_preferences.dart';

enum Preferencekey { username, usermail }

class SharePrefHelper {
  static Future<String?> getUserName() async {
    return (await SharedPreferences.getInstance()).getString(Preferencekey.username.toString());
  }

  static Future<bool?> setUserName(String name) async {
    return (await SharedPreferences.getInstance()).setString(Preferencekey.username.toString(), name);
  }
}

