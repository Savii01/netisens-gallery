import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ThirdOnboardingScreen extends StatelessWidget {
  const ThirdOnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child:Stack(
        children: [
          Positioned(
            child: Image.asset(
              'images/onbarding3.png',
              fit: BoxFit.fill,
              width: screenWidth,
            ),
          ),
          Positioned(
            left: 33,
            bottom: 200,
            child: Text(
              "Netisens - providing digital \nskills for the future.",
              style: GoogleFonts.syne(fontSize: 22, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
