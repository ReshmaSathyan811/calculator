import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: CustomFontss()));
}

class CustomFontss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // Center(
            //
            //   child:
            Text(
              "My google form demo",
              style: GoogleFonts.acme(fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
           child: const Text(
              "My Custom Font Demo",
              style: TextStyle(fontFamily: 'Roboto-Black'),
            ),
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.white,
                Colors.blue,
                Colors.yellow,
                Colors.green
              ],
              begin: Alignment.bottomLeft,
                end: Alignment.topRight
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}
