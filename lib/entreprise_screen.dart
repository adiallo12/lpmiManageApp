import 'package:flutter/material.dart';

class EntrepriseScreen extends StatelessWidget {
  const EntrepriseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text(
                "Bienvenue dans la section Entreprises",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
