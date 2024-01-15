import 'package:flutter/material.dart';
import 'package:lpmi/components/side_menu.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Étudiants'),
        ),
        drawer: SideMenu(),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/images/logoUB.png", width: 150),
          const Text(
            "Étudiants",
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
