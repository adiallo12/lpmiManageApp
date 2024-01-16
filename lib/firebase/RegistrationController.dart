import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegistrationController extends ChangeNotifier {
  String _email = "";
  String _password = "";
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> registerWithEmailAndPassword() async {
    try {
      final UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: _email,
        password: _password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      throw e;
      return null;
    }
  }

  String get email => _email;
  String get password => _password;
  void setEmail(String email) => _email = email;
  void setPassword(String password) => _password = password;
}
