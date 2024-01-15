import 'package:flutter/material.dart';
import 'package:lpmi/screens/entreprise_screen.dart';
import 'package:lpmi/screens/home_screen.dart';
import 'package:lpmi/screens/offer_screen.dart';
import 'package:lpmi/screens/setting_screen.dart';
import 'package:lpmi/screens/student_screen.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  late String currentRoute;

  @override
  void initState() {
    super.initState();
    currentRoute = 'Accueil';
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
          createDrawerItem(
            icon: Icons.home,
            text: 'Accueil',
            onTap: () => navigateToScreen(const HomeScreen()),
          ),
          createDrawerItem(
            icon: Icons.school,
            text: 'Étudiants',
            onTap: () => navigateToScreen(const StudentScreen()),
          ),
          createDrawerItem(
            icon: Icons.business,
            text: 'Entreprise',
            onTap: () => navigateToScreen(const EntrepriseScreen()),
          ),
          createDrawerItem(
            icon: Icons.local_offer,
            text: 'Offres',
            onTap: () => navigateToScreen(const OfferScreen()),
          ),
          createDrawerItem(
            icon: Icons.settings,
            text: 'Paramètres',
            onTap: () => navigateToScreen(const SettingScreen()),
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

  void navigateToScreen(Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}
