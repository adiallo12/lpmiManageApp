import 'package:flutter/material.dart';

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

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const Text(
                'Login',
                style: TextStyle(fontSize: 30),
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
                      ElevatedButton(onPressed: () {}, child: const Text("se connecter")),
                      const SizedBox(height: 40),

                        const Text(
                          'pas de comptes, inscrivez-vous',
                        ),


          ],

        ),

      ));


  }
}