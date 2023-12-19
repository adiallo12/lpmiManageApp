import 'package:flutter/material.dart';
import 'package:lpmi/screens/entreprise_screen.dart';
import 'package:lpmi/screens/home_screen.dart';
import 'package:lpmi/screens/offer_screen.dart';
import 'package:lpmi/screens/setting_screen.dart';
import 'package:lpmi/screens/student_screen.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          createDrawerItem(
            icon: Icons.home,
            text: 'Accueil',
            onTap: () {
                Navigator.push(context, 
               MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
          ),
            createDrawerItem(
            icon: Icons.school,
            text: 'Étudiants',
            onTap: () {
                Navigator.push(context, 
               MaterialPageRoute(builder: (context) => const StudentScreen()));
            },
          ),
          createDrawerItem(
            icon: Icons.business,
            text: 'Entreprise',
            onTap: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => const EntrepriseScreen()));
            },
          
          ),
       
            createDrawerItem(
            icon: Icons.local_offer,
            text: 'Offres',
            onTap: () {
                Navigator.push(context, 
               MaterialPageRoute(builder: (context) => const OfferScreen()));
            },
          ),
            createDrawerItem(
            icon: Icons.settings,
            text: 'Paramètres',
            onTap: () {
                Navigator.push(context, 
               MaterialPageRoute(builder: (context) => const SettingScreen()));
            },
          ),
         
        ],
      ),
    );
  }

   Widget createDrawerItem({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
  return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              text,
              style: const TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}

