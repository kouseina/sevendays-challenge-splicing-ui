import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondRandom extends StatefulWidget {
  const SecondRandom({Key? key}) : super(key: key);

  @override
  _SecondRandomState createState() => _SecondRandomState();
}

class _SecondRandomState extends State<SecondRandom> {
  int selected = -1;

  @override
  Widget build(BuildContext context) {
    Widget date(
        {int index = 0,
        String day = '',
        String date = '',
        bool disabled = false}) {
      return Padding(
        padding: const EdgeInsets.only(right: 20),
        child: InkWell(
          onTap: disabled == false
              ? () {
                  setState(() {
                    selected = index;
                  });
                }
              : null,
          borderRadius: BorderRadius.circular(22),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                width: 80,
                height: 100,
                decoration: BoxDecoration(
                  color: disabled == true ? Color(0xffF4F4F6) : Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Align(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        day,
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: disabled == true
                              ? Color(0xffBABAC8)
                              : Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        date,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: disabled == true
                              ? Color(0xffBABAC8)
                              : Color(0xffA8ACB6),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              selected == index
                  ? Container(
                      padding:
                          EdgeInsets.only(left: 4, bottom: 3, right: 7, top: 6),
                      decoration: BoxDecoration(
                        color: Color(0xff3F6DF6),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(22),
                        ),
                      ),
                      child: Image.asset(
                        'assets/ic_checklist.png',
                        width: 16,
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffFAFBFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/img_booking.jpg'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Arrina La',
              style: GoogleFonts.poppins(
                fontSize: 26,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Bali, Dekat Bandung',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Color(0xff2F323A),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Pantai Pandawa adalah salah satu para kawasan wisata di area Kuta selatan sana Kabupaten Dekat Bandung, Bali.',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff2F323A),
                    ),
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Text(
                    'Booking Now',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        date(index: 0, day: 'THU', date: '19 JAN'),
                        date(index: 1, day: 'FRI', date: '20 JAN'),
                        date(
                            index: 2,
                            day: 'SAT',
                            date: '21 JAN',
                            disabled: true),
                        date(index: 3, day: 'SUN', date: '222 JAN'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$22.800',
                              style: GoogleFonts.poppins(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff3F6DF6),
                              ),
                            ),
                            Text(
                              '/night',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Color(0xff2F323A),
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(19),
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            width: 220,
                            decoration: BoxDecoration(
                              color: Color(0xff3F6DF6),
                              borderRadius: BorderRadius.circular(19),
                            ),
                            child: Align(
                              child: Text(
                                'Continue',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffFAFAFA),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
