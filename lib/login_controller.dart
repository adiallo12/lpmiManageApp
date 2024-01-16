import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class LoginController extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential> signIn(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw e;
    }
  }
}
