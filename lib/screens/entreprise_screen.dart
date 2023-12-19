import 'package:flutter/material.dart';

class EntrepriseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Section Entreprise"),
      ),
      body: Center(
        child: Text(
          "Bienvenue dans la section Entreprise",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
