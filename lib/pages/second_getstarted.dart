import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondGetstarted extends StatelessWidget {
  const SecondGetstarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Health First.',
              style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Exercise together with our best \ncommunity fit in the world',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Color(0xff828284),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Image.asset(
              'assets/img_getstarted.png',
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xffAFEA0D),
                ),
                child: Text(
                  'Shape My Body',
                  style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Terms & Conditions',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Color(0xff757575),
                    decoration: TextDecoration.underline,
                    decorationThickness: 1.5,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
