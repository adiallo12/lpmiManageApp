import 'package:flutter/material.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Offres'),
      ),
      body: const Center(
        child: Text(
          'Bienvenue sur la page des offres !',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
