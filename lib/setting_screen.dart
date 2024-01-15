import 'package:flutter/material.dart';
import 'package:lpmi/components/side_menu.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Paramètres'),
        ),
        drawer: SideMenu(),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/images/logoUB.png", width: 150),
          const Text(
            "Paramètres",
            style: TextStyle(
              fontSize: 25,
              decoration: TextDecoration.underline,
              decorationColor: Colors.orange,
              color: Colors.orange,
            ),
          )
        ])));
  }
}
