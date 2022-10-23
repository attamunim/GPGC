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
          Container(
            child: Image(
              image: AssetImage('assets/images/GPGC2.gif'),
            ),
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 45,
              width: 390,
              decoration: BoxDecoration(
                color: Color(0xff5865F2),
                borderRadius: BorderRadius.circular(5),
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
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 45,
              width: 390,
              decoration: BoxDecoration(
                color: Color(0xff6A7480),
                borderRadius: BorderRadius.circular(5),
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
            ),
          )
        ],
      ),
    );
  }
}
