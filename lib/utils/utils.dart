import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  late final String username;
  late final String usermail;


  static Future<String> GetUserMail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String usermail = prefs.getString('usermail') ?? '';
    return usermail;
  }
  static Future<bool?> SetUserMail(String usermail) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('usermail', usermail);
  }
}
