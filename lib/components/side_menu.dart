import 'package:flutter/material.dart';
import 'package:lpmi/entreprise_screen.dart';
import 'package:lpmi/home_screen.dart';
import 'package:lpmi/offer_screen.dart';
import 'package:lpmi/setting_screen.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Menu'),
          ),
          ListTile(
            title: const Text('Accueil'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
          ),
          ListTile(
            title: const Text('Entreprise'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EnterpriseScreen()));
            },
          ),
          ListTile(
            title: const Text('Offres'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OfferScreen()));
            },
          ),
          ListTile(
            title: const Text('Paramètres'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingScreen()));
            },
          ),
        ],
      ),
    );
  }
}
