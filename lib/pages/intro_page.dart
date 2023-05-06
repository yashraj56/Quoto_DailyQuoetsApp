import 'package:flutter/material.dart';

/*
Depend_on_referenced_packages is a property that can be set in a Dart package's pubspec.yaml file.
It specifies whether the package should include all of its transitive dependencies when it is
published to the Pub package repository.
*/

// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

import 'login_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = 40;
    double width = 40;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Image.asset(
              "assets/quote.png",
              height: height,
              width: width,
            ),
            const SizedBox(
              height: 50,
            ),
            RichText(
              text: TextSpan(
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(fontSize: 50, color: Colors.black),
                ),
                children: const [
                  TextSpan(text: "Get\n"),
                  TextSpan(
                      text: "Inspired",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: const Text("Let's Go"),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
