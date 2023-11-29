import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gridview/myButton.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "SUSHI MAN",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('images/sushi.png'),
            ),
            Text(
              "THE TASTE OF JAPANESE FOOD",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 40, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Feel the taste of the most popular Japanese food from anywhere and anytime",
              style: GoogleFonts.dmSerifDisplay(
                  color: Colors.grey[300], height: 2),
            ),

            const SizedBox(
              height: 40,
            ),
            //button
            myButton(
              text: "Get started",
              ontap: () {
                Navigator.pushNamed(context, '/menuPage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
