import 'package:flutter/material.dart';

import 'login_screen.dart';

class RegisterScreenII extends StatefulWidget {
  const RegisterScreenII({super.key});

  @override
  State<RegisterScreenII> createState() => _RegisterScreenIIState();
}

class _RegisterScreenIIState extends State<RegisterScreenII> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('back'),
          backgroundColor: const Color(0xff7289DA),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                'Register',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Pick a Username',
                style: TextStyle(fontSize: 15, color: Colors.black45),
              ),
            ),
            Center(
              child: TextFormField(
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  hintText: 'what should everybody call you?',
                  fillColor: const Color(0xffF8F9FA),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffDAE4E4),
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffDAE4E4),
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'You can always change it later.',
                style: TextStyle(fontSize: 15, color: Colors.black45),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  fillColor: const Color(0xffF8F9FA),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffDAE4E4),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffDAE4E4),
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'By registering you agreee to our',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: (() {}),
                    child: Text(
                      'Terms & Conditions',
                      style: TextStyle(fontSize: 15),
                    )),
                Text(
                  'and',
                  style: TextStyle(fontSize: 15),
                ),
                TextButton(
                    onPressed: (() {}),
                    child: Text(
                      'privacy policy.',
                      style: TextStyle(fontSize: 15),
                    )),
              ],
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  }),
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ),
          ],
        ));
  }
}
