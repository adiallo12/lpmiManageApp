import 'package:flutter/material.dart';
import 'package:lpmi/component/side_menu.dart';
import 'package:fl_chart/fl_chart.dart';


class Home extends StatefulWidget {
  const Home({
    super.key
  });

  @override
  State < Home > createState() => HomeState();
}

class HomeState extends State < Home > {
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
       Text("Page Home")]))
    );


  }
}