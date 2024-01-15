
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:lpmi/dashboard_screen.dart';
import 'package:lpmi/entreprise_screen.dart';
import 'package:lpmi/login_screen.dart';
import 'package:lpmi/home_screen.dart';
import 'package:lpmi/offer_screen.dart';
import 'package:lpmi/setting_screen.dart';
import 'package:lpmi/student_screen.dart';

class Menu extends StatefulWidget {
 // final fonction(int) onItemSelect,
  //final int SelectedIndex;
  const Menu({
    super.key
  });

  @override
  State < Menu > createState() => MenuState();
}


class MenuState extends State < Menu > {
  @override
  Widget build(BuildContext context) {


    Widget createMenuWidget( 
      {
      required IconData icon, required
    String text ,required Color col, required Widget page,
    
    })

      {
          return 
          ListTile(
        title: Center(
              child: Row(
                
                children: [
                  Icon(icon),
                  TextButton(

                      onPressed: () {

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>  page
                      
                      ));
                      },
                      
                      child:Text(text,style: TextStyle(fontSize: 30,color:col),)

                    ),
                  const SizedBox(height: 20),
                ],
          )
          )
          );
      }
      


    return    Drawer(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            
    
        createMenuWidget(icon:Icons.home,text:"home",col:Colors.blue,page:Home()),

        createMenuWidget(icon:Icons.school,text:"student",col:Color.fromARGB(255, 222, 243, 33),page:Student()),

        createMenuWidget(icon:Icons.compass_calibration,text:"entreprise",col:Color.fromARGB(255, 243, 33, 33),page:Entreprise()),

        createMenuWidget(icon:Icons.settings,text:"settings",col:Color.fromARGB(255, 100, 100, 98),page:Setting()),
       
        createMenuWidget(icon:Icons.pages,text:"offer",col:Color.fromARGB(255, 33, 243, 177),page:Offer()),

        createMenuWidget(icon:Icons.bookmark_add,text:"dashboard",col:Color.fromARGB(255, 243, 33, 145),page:Board()),

          ]

    ));


  }
}