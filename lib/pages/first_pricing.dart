import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPricing extends StatefulWidget {
  const FirstPricing({Key? key}) : super(key: key);

  @override
  _FirstPricingState createState() => _FirstPricingState();
}

class _FirstPricingState extends State<FirstPricing> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Center(
            child: Image.asset(
              'assets/illustration_pricing_1.png',
              width: 100,
            ),
          ),
          SizedBox(
            height: 48,
          ),
          Text(
            'Which one you wish \nto Upgrade?',
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Color(0xff191919),
            ),
            textAlign: TextAlign.center,
          )
        ],
      );
    }

    Widget option({
      int index = 0,
      String imageUrl = 'assets/illustration_select_pricing_1.png',
      String title = 'Money Security',
      String desc = 'support',
      String subDesc = '24/7',
    }) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        borderRadius: BorderRadius.circular(39),
        child: Container(
          width: 315,
          padding: EdgeInsets.only(top: 16, left: 16, bottom: 23, right: 26),
          decoration: BoxDecoration(
            border: Border.all(
              color: selectedIndex == index
                  ? Color(0xff6050E7)
                  : Color(0xffD9DEEA),
            ),
            borderRadius: BorderRadius.circular(39),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    imageUrl,
                    width: 66,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.poppins(
                            color: Color(0xff191919),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      RichText(
                        text: TextSpan(
                          text: '$desc ',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Color(0xffA3A8B8)),
                          children: <TextSpan>[
                            TextSpan(
                              text: subDesc,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff5343C2)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              index == selectedIndex
                  ? Container(
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Color(0xff6050E7),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset(
                        'assets/ic_checklist.png',
                        width: 24,
                      ),
                    )
                  : SizedBox(
                      width: 26,
                    ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
          child: Column(
            children: [
              header(),
              SizedBox(
                height: 50,
              ),
              option(),
              SizedBox(
                height: 24,
              ),
              option(
                index: 1,
                imageUrl: 'assets/illustration_select_pricing_2.png',
                title: 'Automation',
                desc: 'we provide',
                subDesc: 'Invoice',
              ),
              SizedBox(
                height: 24,
              ),
              option(
                index: 2,
                imageUrl: 'assets/illustration_select_pricing_3.png',
                title: 'Balance Report',
                desc: 'can up to',
                subDesc: '10k',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff6050E7),
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 14, left: 7),
              child: Text(
                'Upgrade Now',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 12, left: 80),
              child: Image.asset(
                'assets/ic_arrow_right_1.png',
                width: 24,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
