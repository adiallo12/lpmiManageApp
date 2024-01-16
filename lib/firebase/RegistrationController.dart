import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegistrationController extends ChangeNotifier {
  String _email = "";
  String _password = "";
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: _email,
        password: _password,
      );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw e;
    }
  }

  String get email => _email;
  String get password => _password;
  void setEmail(String email) => _email = email;
  void setPassword(String password) => _password = password;
}
