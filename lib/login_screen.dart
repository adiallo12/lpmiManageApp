import 'package:flutter/material.dart';
import 'package:lpmi/utils/utils.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Image(
              image: AssetImage("assets/images/logoUB.png"),
            ),
            const SizedBox(
              height: 100,
            ),
            const SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 100),
                  ),
                  labelText: 'Username ',
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 100),
                  ),
                  labelText: 'Password',
                ),
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen()),);
                //SharedPreferenceHelper.GetUserMail();
                SharedPreferenceHelper.SetUserMail("test");
              },
              style: ElevatedButton.styleFrom(foregroundColor: Colors.orange),
              child: const Text("Se connecter !"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("S'inscire"),
            )
          ],
        ),
      ),
    );
  }
}
