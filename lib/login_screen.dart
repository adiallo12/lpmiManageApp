import 'package:flutter/material.dart';
import 'package:lpmi/home_screen.dart';
import 'package:lpmi/services/SharedPrefHelper.dart';

class Login extends StatefulWidget {
  const Login({
    super.key
  });

  @override
  State < Login > createState() => LoginState();
}

class LoginState extends State < Login > {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
                title: const Text('Inscription'),
                centerTitle: true,
            ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const Text(
                'Login',
                style: TextStyle(fontSize: 30,color:Colors.white),
              ),
              const SizedBox(height: 20),

                const SizedBox(height: 80, width: 400,


                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        hintText: 'Enter your login',
                        filled: true,
                      ),
                    ),

                  ),

                  //SizedBox(height:20),

                  const SizedBox(height: 80, width: 400,


                      child: TextField(

                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(),
                          hintText: 'Enter your password',

                        ),
                      ),

                    ),
                    const SizedBox(height: 20),
                      ElevatedButton(onPressed: () {
                   
                       SharedPrefHelper.SetUserMail("sqd");
                      print (SharedPrefHelper.GetUserMail());

       // Navigator.push(context, MaterialPageRoute(builder: (context)=>  Home()));

                      }
                      
                      , child: const Text("se connecter",),),
                      const SizedBox(height: 40),

                        const Text(
                          'pas de comptes, inscrivez-vous',
                          style: TextStyle(fontSize: 15,color:Colors.white),
                        ),


          ],

        ),

      ));


  }
}