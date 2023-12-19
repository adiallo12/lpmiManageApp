import 'package:flutter/material.dart';
import 'package:lpmi/components/profile_icon.dart';

class OffersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Offres"),
        actions: <Widget>[
          ProfileIcon(imageUrl: 'assets/images/profil_picture.jpg'),
        ],
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text(
                "Bienvenue dans la section Offres",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
