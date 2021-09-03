import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff13131E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 140,
                  ),
                  Text(
                    'VENTURE',
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
