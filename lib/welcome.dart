import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gpgc/login_screen.dart';
import 'package:gpgc/register.dart';
import 'package:provider/provider.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/images/GPGC2.gif'),
          ),
          SizedBox(
            height: 150,
          ),
          const Center(
            child: Text(
              'Welcome',
              style: TextStyle(fontSize: 30),
            ),
          ),
          const Center(
            child: Text(
              'Join to get most of the insights of GPGC',
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            width: 390,
            decoration: BoxDecoration(
              color: Color(0xff7289DA),
              borderRadius: BorderRadius.circular(10),
            ),
            child: OutlinedButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterScreen()));
                }),
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 390,
            decoration: BoxDecoration(
              color: Color(0xff747F8D),
              borderRadius: BorderRadius.circular(10),
            ),
            child: OutlinedButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                }),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          )
        ],
      ),
    );
  }
}
