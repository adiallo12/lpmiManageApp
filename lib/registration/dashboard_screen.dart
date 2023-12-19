import 'package:flutter/material.dart';
import 'package:lpmi/registration/home_screen.dart';
import 'package:lpmi/registration/student_screen.dart';
import 'package:lpmi/registration/enterprise_screen.dart';
import 'package:lpmi/registration/offer_screen.dart';
import 'package:lpmi/registration/setting_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: ListView(
        // Utilisez un ListView pour placer les sections verticalement
        padding: EdgeInsets.all(16.0),
        children: [
          HomeScreen(), // Affichez la section Home
          SizedBox(height: 20), // Espacement entre les sections
          OfferScreen(), // Affichez la section Offer
          SizedBox(height: 20),
          EnterpriseScreen(), // Affichez la section Enterprise
          SizedBox(height: 20),
          SettingScreen(), // Affichez la section Setting
          SizedBox(height: 20),
          StudentScreen(), // Affichez la section Student
          // Vous pouvez ajouter d'autres sections ici si nécessaire
        ],
      ),
    );
  }
}
