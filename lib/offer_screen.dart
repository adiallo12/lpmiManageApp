import 'package:flutter/material.dart';
import 'package:lpmi/components/profile_icon.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Section Offres"),
        actions: const <Widget>[
          ProfileIcon(imageUrl: 'assets/images/profil_picture.jpg'),
        ],
      ),
      body: const Row(
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
