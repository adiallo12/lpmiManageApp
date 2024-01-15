import 'package:flutter/material.dart';
import 'package:lpmi/screens/register_screen.dart';
import 'package:lpmi/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Connexion"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(height: 20),
                const SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Mot de passe',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                ),
                const SizedBox(height: 30),
                const SizedBox(height: 20),
                ElevatedButton(
                  child: const Text("Se connecter"),
                  onPressed: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                ),
                const SizedBox(height: 10),
                TextButton(
                  child: const Text("Pas de compte ? S'inscrire"),
                  onPressed: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const RegisterScreen()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
