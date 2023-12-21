import 'package:flutter/material.dart';
import 'package:lpmi/dashboard_screen.dart';

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
              Navigator.pushNamed(context, '/Accueil');
            },
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
              Navigator.pushNamed(context, '/student');
            },
          ),
          CreateDrawerItem(
            icon: Icons.business,
            text: 'buisness',
            onTap: () {
              Navigator.pushNamed(context, '/entreprise');
            },
          ),
          CreateDrawerItem(
            icon: Icons.work,
            text: 'Offer',
            onTap: () {
              Navigator.pushNamed(context, '/offer');
            },
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
