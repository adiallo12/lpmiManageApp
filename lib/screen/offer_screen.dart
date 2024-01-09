import 'package:flutter/material.dart';
import 'package:lpmi/Components/side_menu.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({super.key});

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Offer", 
          style: TextStyle(
            fontSize: 24, 
            fontWeight: FontWeight.bold,
            ),
        ),

      ),
      drawer: const SideMenu(),
      body: const Center(
        child: Text("Bienvenue sur la page Offer"),
      ),
      
    );
  }
}