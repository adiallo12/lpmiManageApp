import 'package:flutter/material.dart';
import 'package:lpmi/dashboard_screen.dart';
import 'package:lpmi/entreprise_screen.dart';
import 'package:lpmi/offer_screen.dart';
import 'package:lpmi/student_screen.dart';
import 'package:lpmi/home_screen.dart';

class SideMenu extends StatefulWidget {
  final Function(int) onItemsSelected;
  final int selectedIndex;
  const SideMenu(
      {super.key, required this.onItemsSelected, required this.selectedIndex});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
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
          CreateDrawerItem(
            icon: Icons.home,
            text: 'accueil',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );            },
          ),
          CreateDrawerItem(
            icon: Icons.dashboard,
            text: "DashBoard",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DashboardScreen()),
              );
            },
          ),
          CreateDrawerItem(
            icon: Icons.people,
            text: 'Student',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const StudentScreen()),
              );
            },
          ),
          CreateDrawerItem(
            icon: Icons.business,
            text: 'buisness',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EntrepriseScreen()),
              );            },
          ),
          CreateDrawerItem(
            icon: Icons.work,
            text: 'Offer',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OfferScreen()),
              );            },
          )
        ],
      ),
    );
  }
}

Widget CreateDrawerItem({
  required IconData icon,
  required String text,
  required VoidCallback onTap,
}) {
  return ListTile(
    title: Row(
      children: [
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}
