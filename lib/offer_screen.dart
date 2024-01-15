import 'package:flutter/material.dart';
import 'package:lpmi/components/side_menu.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({super.key});

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Offres'),
        ),
        drawer: SideMenu(),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/images/logoUB.png", width: 150),
          const Text(
            "Offres",
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
