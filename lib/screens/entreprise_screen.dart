import 'package:flutter/material.dart';
import '../components/side_menu.dart'; 

class EntrepriseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entreprises'),
      ),
      drawer: SideMenu(), // Ajoute le SideMenu comme un drawer ici
      body: Center(
        child: Text('Écran des entreprises'),
      ),
    );
  }
}
