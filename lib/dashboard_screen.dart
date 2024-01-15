import 'package:flutter/material.dart';
import 'package:lpmi/component/side_menu.dart';


class Board extends StatefulWidget {
  const Board({
    super.key
  });

  @override
  State < Board > createState() => BoardState();
}

class BoardState extends State < Board > {
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
       Text("Page Board")]))
    );


  }
}