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
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
              ),
              child: const Text("Login"),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                //Navigator.push(
                  //context,
                  //MaterialPageRoute(
                    //builder: (context) => const InscriptionScreen(),
                  //),
                //);
              },
              child: const Text(
                'Inscription',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Color.fromARGB(255, 107, 107, 107),
                  fontSize: 16.0,
                ),
              )
            )
          ],
        )
      ),
    );
  }
}