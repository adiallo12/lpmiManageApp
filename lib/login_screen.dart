import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connexion'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logoUB.png", width: 150),
              const SizedBox(
                width: 300,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              const SizedBox(
                width: 300,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Mot de passe',
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  
                },
                child: const Text('Se connecter'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



