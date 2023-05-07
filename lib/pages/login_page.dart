import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  // Concrete implementation
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(
              flex: 3,
            ),
            RichText(
              text: TextSpan(
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(color: Colors.black),
                ),
                children: const [
                  TextSpan(text: "Hello,\n", style: TextStyle(fontSize: 16)),
                  TextSpan(
                      text: "Welcome to Quote!",
                      style: TextStyle(fontSize: 25)),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const TextField(
              decoration: InputDecoration(labelText: "Mobile Number"),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                // color: Colors.black,
                // textColor: Colors.white,
                child: const Text("Continue"),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
