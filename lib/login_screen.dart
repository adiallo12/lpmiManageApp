import 'package:flutter/material.dart';
import 'package:lpmi/dashboard_screen.dart';
import 'package:lpmi/registrationScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("assets/images/logoUB.png", width: 150),
        const Text(
          "Se connecter",
          style: TextStyle(
            fontSize: 25,
            decoration: TextDecoration.underline,
            decorationColor: Colors.orange,
            color: Colors.orange,
          ),
        ),
        const SizedBox(height: 20),
        const SizedBox(
          width: 300,
          child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Email")),
        ),
        const SizedBox(height: 10),
        const SizedBox(
          width: 300,
          child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Mot de passe")),
        ),
        const SizedBox(height: 20),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DashboardScreen()),
              );},
            style: ElevatedButton.styleFrom(foregroundColor: Colors.orange),
            child: const Text("Se connecter !"),
          ),
        ]),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RegistrationScreen()),
            );
          },
          child: const Text("Pas de compte ? S'inscrire !",
              style: TextStyle(
                fontSize: 15,
                decoration: TextDecoration.underline,
                decorationColor: Colors.orange,
                color: Colors.orange,
              )),
        )
      ]),
    ));
  }
}
