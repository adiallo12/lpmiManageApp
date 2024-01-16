import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class RegistrationController extends ChangeNotifier {
  final FirebaseAuth auth0 = FirebaseAuth.instance;


  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void registerUser(BuildContext context) {
    String name = nameController.text;
    String email = emailController.text;
    String password = passwordController.text;

    Navigator.of(context).pushReplacementNamed('/login');

    Future<UserCredential> registerUser(name,email,password)async {
      UserCredential result = await auth0.createUserWithEmailAndPassword(email: email
    }
  }
}
