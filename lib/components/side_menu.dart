import 'package:flutter/material.dart';
import '../screens/dashboard_screen.dart';
import '../screens/student_screen.dart';
import '../screens/enterprise_screen.dart';
import '../screens/home_screen.dart';
import '../screens/offer_screen.dart';
import '../screens/setting_screen.dart';
import 'package:lpmi/components/theme_notifier.dart';
import'package:provider/provider.dart';


class SideMenu extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    var themeNotifier = Provider.of<ThemeNotifier>(context);
    var themeData = themeNotifier.themeData;

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: themeNotifier.themeData.appBarTheme.backgroundColor,
            ),
            child: Text (
              'Menu',
              style: TextStyle(color: themeData.textTheme.bodyMedium?.color,
               fontWeight: FontWeight.bold)
            )
          ),
          createDrawerItem(
            icon: Icons.dashboard,
            text: 'Dashboard',
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => DashboardScreen()),
              );
            },
            themeData: themeData,
          ),
          createDrawerItem(
            icon: Icons.home,
            text: 'Home',
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            themeData: themeData,
          ),
          createDrawerItem(
            icon: Icons.person,
            text: 'Student',
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => StudentScreen()),
              );
            },
            themeData: themeData,
          ),
          createDrawerItem(
            icon: Icons.business,
            text: 'Enterprise',
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => EnterpriseScreen()),
              );
            },
            themeData: themeData,
          ),
          createDrawerItem(
            icon: Icons.local_offer,
            text: 'Offer',
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => OfferScreen()),
              );
            },
            themeData: themeData,
          ),
          createDrawerItem(
            icon: Icons.settings,
            text: 'Settings',
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SettingScreen()),
              );
            },
            themeData: themeData,
          ),
        ],
      ),
    );
  }

  Widget createDrawerItem({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
    required ThemeData themeData,
  }) {
    return Container(
      color: themeData.scaffoldBackgroundColor,
      child: ListTile(
        selectedTileColor: Colors.red,
        title: Row(
          children: <Widget>[
            Icon(icon, color: themeData.iconTheme.color),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(text, style: TextStyle(color: themeData.textTheme.bodyMedium?.color)),
            ),
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}