import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String _email = '';
  String _password = '';

  Future<UserCredential> Login() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      // handle error
      throw e;
    }
  }

  String get email => _email;
  String get password => _password;
  void setEmail(String email) => _email = email;
  void setPassword(String password) => _password = password;
}
