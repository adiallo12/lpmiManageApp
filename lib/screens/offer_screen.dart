import 'package:flutter/material.dart';
import '../components/side_menu.dart'; 

class OfferScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offres'),
      ),
      drawer: SideMenu(), 
      body: Center(
        child: Text(
          'Bienvenue sur la page des offres !',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
