// side_menu.dart

import 'package:flutter/material.dart';
import 'package:lpmi/screen/home_screen.dart';
import 'package:lpmi/screen/student_screen.dart';
import 'package:lpmi/screen/Offer_Screen.dart';
import 'package:lpmi/screen/settings_Screen.dart';
import 'package:lpmi/screen/entreprise_Screen.dart';



class SideMenu extends StatelessWidget {
  final Function(Widget) onSelectScreen; // Ajout du type de fonction pour la sélection de l'écran

  const SideMenu({Key? key, required this.onSelectScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Accueil'),
            onTap: () {
              onSelectScreen(HomeScreen());
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Étudiants'),
            onTap: () {
              onSelectScreen(StudentScreen());
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Entreprises'),
            onTap: () {
              onSelectScreen(EntrepriseScreen());
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Offres'),
            onTap: () {
              onSelectScreen(OfferScreen());
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Paramètres'),
            onTap: () {
              onSelectScreen(SettingsScreen());
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
