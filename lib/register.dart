import 'package:flutter/material.dart';
import 'package:gpgc/login_screen.dart';
import 'package:gpgc/register_two.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Back'),
          backgroundColor: const Color(0xff2b2b2b),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Enter Email || Phone Number',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  focusColor: Colors.black,
                  hintText: 'Enter Email',
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.mail,
                    color: Color(0xff5865F2),
                  ),
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
            SizedBox(
              height: 20,
            ),
            Center(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  hintText: 'Enter Phone Number',
                  fillColor: const Color(0xffF8F9FA),
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.phone,
                    color: Color(0xff5865F2),
                  ),
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
            TextButton(
                onPressed: (() {}), child: Text('View our privacy policy')),
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
                              builder: (context) => RegisterScreenII()));
                    }),
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ),
            )
          ],
        ));
  }
}
