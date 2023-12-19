import 'package:flutter/material.dart';
import 'package:lpmi/screens/dashboard_screen.dart';
//import '../screens/dashboard_screen.dart';
import '../screens/student_screen.dart';
import '../screens/offer_screen.dart';
import '../screens/setting_screen.dart';
import '../screens/entreprise_screen.dart';

class SideMenu extends StatelessWidget {
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
            leading: Icon(Icons.business_center),
            title: Text('Dashboard'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen())),
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Étudiants'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => StudentScreen())),
          ),
          ListTile(
            leading: Icon(Icons.business_center),
            title: Text('Offres'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => OfferScreen())),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Paramètres'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen())),
          ),
          ListTile(
            leading: Icon(Icons.business),
            title: Text('Entreprises'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => EntrepriseScreen())),
          ),
        ],
      ),
    );
  }
}
