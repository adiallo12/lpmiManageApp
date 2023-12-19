import 'package:flutter/material.dart';

class StudentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Section Étudiants"),
      ),
      body: Center(
        child: Text(
          "Bienvenue dans la section Étudiants",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
