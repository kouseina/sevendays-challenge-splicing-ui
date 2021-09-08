import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPricing extends StatelessWidget {
  const SecondPricing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget feature(String text) {
      return Row(
        children: [
          Container(
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color(0xffFE6C4D),
            ),
            child: Image.asset(
              'assets/ic_checklist.png',
              width: 24,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.white,
            ),
          )
        ],
      );
    }

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color(0xff0B073E),
            Color(0xff602880),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 28, left: 28, top: 60),
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    'assets/illustration_pricing_2.png',
                    width: 164,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Pro Features',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Unlock the winner modules \nand get more insights',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Color(0xff7F7FAD),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50,
                ),
                feature('Unlock Our Top Charts'),
                SizedBox(
                  height: 26,
                ),
                feature('Save More than 1,000 Docs'),
                SizedBox(
                  height: 26,
                ),
                feature('24/7 Customer Support'),
                SizedBox(
                  height: 26,
                ),
                feature('Track Company’s Spending'),
                SizedBox(
                  height: 55,
                ),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(31),
                  child: Container(
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(31),
                        color: Color(0xffE57C73),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffE57C73),
                            blurRadius: 40,
                            offset: Offset(0, 10),
                            spreadRadius: -5,
                          ),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Text(
                          'Subscribe Now',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Image.asset(
                          'assets/ic_arrow_right_2.png',
                          width: 41,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Contact Support',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
