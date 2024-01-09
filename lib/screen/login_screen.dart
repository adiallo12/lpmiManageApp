import 'package:flutter/material.dart';
import 'package:lpmi/screen/register_screen.dart';
import 'package:lpmi/screen/dashboard_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Login", 
          style: TextStyle(
            fontSize: 24, 
            fontWeight: FontWeight.bold,
            ),
        ),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'e-mail', 
                  contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
                  border: OutlineInputBorder(),
                ),
              )
            ),
            const SizedBox( height: 20),
            const SizedBox(
              width: 300,
              child: TextField(
                obscureText: true,
                obscuringCharacter: 'a',
                decoration: InputDecoration(
                  labelText: 'password',
                  contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
                  border: OutlineInputBorder()
                ),
              )
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DashboardScreen()),
                );
                  },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
              ),
              child: const Text("Login"),
            ),
            const SizedBox(height: 20),
            TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RegisterScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                  ),
                  child: const Text("Pas encore de compte ? Inscrivez vous"),
                ),
          ],
        )
      ),
    );
  }
}