import 'package:flutter/material.dart';
import 'package:lpmi/component/side_menu.dart';


class Entreprise extends StatefulWidget {
  const Entreprise({
    super.key
  });

  @override
  State < Entreprise > createState() => EntrepriseState();
}

class EntrepriseState extends State < Entreprise > {
  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      
      appBar: AppBar(
                title: const Text('Inscription'),
                centerTitle: true,
            ),
            drawer: Menu(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
       Text("Page Entreprise")]))
    );


  }
}