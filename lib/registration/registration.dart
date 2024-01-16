import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lpmi/firebase/LoginController.dart';
import 'package:provider/provider.dart';

import '../firebase/RegistrationController.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String _gender = 'Masculin';
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inscription'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
            width: 300, // Largeur fixe pour la colonne
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Nom'),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Prénom'),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Mot de passe'),
                  controller: passwordController,
                  obscureText: true,
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 30),
                    Radio(
                      value: 'Masculin',
                      groupValue: _gender,
                      onChanged: (value) {
                        setState(() {
                          _gender = value.toString();
                        });
                      },
                    ),
                    Text('Masculin'),
                    Radio(
                      value: 'Feminin',
                      groupValue: _gender,
                      onChanged: (value) {
                        setState(() {
                          _gender = value.toString();
                        });
                      },
                    ),
                    Text('Feminin'),
                  ],
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () async {
                    final String email = emailController.text;
                    final String password = passwordController.text;
                    try {
                      final res = await Provider.of<RegistrationController>(
                              context,
                              listen: false)
                          .registerWithEmailAndPassword(email, password);
                      // make a toast to say that the user is connected
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Vous avez bien été inscrit !!'),
                          backgroundColor: Colors.green,
                        ),
                      );
                    } catch (e) {
                      // Handle error
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Erreur lors de la connexion: $e'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                  child: Text('S\'inscrire'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
