import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("assets/images/logoUB.png", width: 150),
        const Text(
          "Se connecter",
          style: TextStyle(
            fontSize: 25,
            decoration: TextDecoration.underline,
            decorationColor: Colors.orange,
            color: Colors.orange,
          ),
        )
      ]),
    ));
  }
}
