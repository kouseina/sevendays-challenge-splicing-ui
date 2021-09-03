import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstGetstarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/bg_getstarted.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 55),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Maximize Revenue',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Gain more profit from cryptocurrency \nwithout any risk involved',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        padding: EdgeInsets.all(22),
                        decoration: BoxDecoration(
                            color: Color(0xff877BFB),
                            borderRadius: BorderRadius.circular(50)),
                        child: Image.asset(
                          'assets/ic_getstarted.png',
                          width: 34,
                          height: 34,
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
