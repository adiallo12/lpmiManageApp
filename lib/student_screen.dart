import 'package:flutter/material.dart';
import 'package:lpmi/component/side_menu.dart';


class Student extends StatefulWidget {
  const Student({
    super.key
  });

  @override
  State < Student > createState() => StudentState();
}

class StudentState extends State < Student > {
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
       Text("Page Student")]))
    );


  }
}