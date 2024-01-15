import 'package:flutter/material.dart';
import 'package:lpmi/component/side_menu.dart';

class Setting extends StatefulWidget {
  const Setting({
    super.key
  });

  @override
  State < Setting > createState() => SettingState();
}

class SettingState extends State < Setting > {
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
       Text("Page Setting")]))
    );


  }
}