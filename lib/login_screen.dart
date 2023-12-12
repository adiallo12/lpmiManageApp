import 'package:flutter/material.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logoUB.png", width: 150),
            const SizedBox(width: 100),
            const Text("Connexion",
                style: TextStyle(fontSize:35,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(width: 200,
                child : TextField(decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Nom d'utilisateur"
                ),
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(width: 200,
                child: TextField(decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Mot de passe"
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                ElevatedButton(onPressed:() {},
                  child: const Text("Se connecter"),
                ),
              ],
            ),
            const Text("Pas de compte ? Cliquez ici pour vous inscrire.",
              style: TextStyle(fontSize: 15,decoration: TextDecoration.underline, decorationColor: Colors.orange, color: Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}
