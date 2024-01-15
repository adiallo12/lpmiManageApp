import 'package:flutter/material.dart';
import 'package:lpmi/component/side_menu.dart';


class Offer extends StatefulWidget {
  const Offer({
    super.key
  });

  @override
  State < Offer > createState() => OfferState();
}

class OfferState extends State < Offer > {
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
       Text("Page Offer")]))
    );


  }
}