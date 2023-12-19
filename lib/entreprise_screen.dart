import 'package:flutter/material.dart';
import 'package:lpmi/components/profile_icon.dart';

class EntrepriseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          ProfileIcon(imageUrl: 'assets/images/profil_picture.jpg'),
        ],
      ),
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
