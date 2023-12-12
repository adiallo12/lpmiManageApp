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
          children: <Widget>[
            const Image(
              image: AssetImage("assets/images/logoUB.png"),
            ),
            SizedBox(
              height: 100,
            ),
            const SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 100),
                  ),
                  labelText: 'Username',
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            const SizedBox(
              width: 300,
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 100),
                  ),
                  labelText: 'Password',
                ),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Connexion'),

            ),
      SizedBox(height: 10),
      ElevatedButton(
        onPressed: () {},
        child: const Text("S'inscire"),
      )
          ],
        ),
      ),
    );
  }
}
