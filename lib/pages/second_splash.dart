import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondSplash extends StatelessWidget {
  const SecondSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Image.asset(
            'assets/bg.jpg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/ic_home.png',
                  width: 51,
                ),
                SizedBox(
                  width: 13,
                ),
                Text(
                  'HouseQu',
                  style: GoogleFonts.montserrat(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
