import 'package:flutter/material.dart';
import 'package:lpmi/Components/side_menu.dart';

class EntrepriseScreen extends StatefulWidget {
  const EntrepriseScreen({super.key});

  @override
  State<EntrepriseScreen> createState() => _EntrepriseScreenState();
}

class _EntrepriseScreenState extends State<EntrepriseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Entreprise", 
          style: TextStyle(
            fontSize: 24, 
            fontWeight: FontWeight.bold,
            ),
        ),

      ),
      drawer: const SideMenu(),
      body: const Center(
        child: Text("Bienvenue sur la page Entreprise"),
      ),
      
    );
  }
}