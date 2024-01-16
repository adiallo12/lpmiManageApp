import 'package:flutter/material.dart';

class LoginController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void loginUser(BuildContext context) {
    String email = emailController.text;
    String password = passwordController.text;


    Navigator.of(context).pushReplacementNamed('/home');
  }
}
