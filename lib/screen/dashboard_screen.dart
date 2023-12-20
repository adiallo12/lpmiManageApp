import 'package:flutter/material.dart';
import 'package:lpmi/Components/side_menu.dart';
import 'package:lpmi/screen/entreprise_screen.dart';
import 'package:lpmi/screen/home_screen.dart';
import 'package:lpmi/screen/offer_screen.dart';
import 'package:lpmi/screen/setting_screen.dart';
import 'package:lpmi/screen/student_screen.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(
        onSelectedItem: (index) {
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const StudentScreen()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EntrepriseScreen()),
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OfferScreen()),
              );
              break;
            case 4:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingScreen()),
              );
              break;
          }
        },
        selectedItem: 0
      ),
      body: const Center(
        child: Text("Bienvenue sur la page Dashboard"),
      ),
      
    );
  }
}