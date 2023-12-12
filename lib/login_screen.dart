import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text("Login", 
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 300),
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
                decoration: InputDecoration(
                  labelText: 'password',
                  contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
                  border: OutlineInputBorder()
                ),
              )
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
              ),
              child: const Text("Login"),
            )
          ],
        )
      ),
    );
  }
}