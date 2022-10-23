import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gpgc/login_screen.dart';
import 'package:gpgc/welcome.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), (() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/GPGC2.gif'),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'GPGC Hangouts',
              style: TextStyle(fontSize: 40, color: Color(0xff424242)),
            )
          ],
        ),
      ),
    );
  }
}
