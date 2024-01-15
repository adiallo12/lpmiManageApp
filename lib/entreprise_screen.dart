import 'package:flutter/material.dart';
import 'package:lpmi/components/side_menu.dart';

class EntrepriseScreen extends StatefulWidget {
  const EntrepriseScreen({super.key});

  @override
  State<EntrepriseScreen> createState() => _EntrepriseState();
}

class _EntrepriseState extends State<EntrepriseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Entreprises'),
        ),
        drawer: SideMenu(),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/images/logoUB.png", width: 150),
          const Text(
            "Entreprises",
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
