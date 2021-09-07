import 'package:flutter/material.dart';
import 'package:sevendays/widgets/theme.dart';

class FirstRating extends StatefulWidget {
  @override
  _FirstRatingState createState() => _FirstRatingState();
}

class _FirstRatingState extends State<FirstRating> {
  int active = -1;

  @override
  Widget build(BuildContext context) {
    Widget emoji({int index = 0, String image = 'assets/emoji_1.png'}) {
      return InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: () {
          setState(() {
            active = index;
          });
        },
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: active == index ? Color(0xffEEF0FF) : Color(0xff37394D),
          ),
          child: Image.asset(
            image,
            width: 28,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff181925),
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 38, right: 38),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/img_rating_1.png',
                width: 200,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Pizza Ballado',
              style: boldTextStyleDark,
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              '\$90,00',
              style: pricingTextStyleDark,
            ),
            SizedBox(
              height: 90,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Was it delicous?',
                  style: questionTextStyleDark,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    emoji(index: 0, image: 'assets/emoji_1.png'),
                    emoji(index: 1, image: 'assets/emoji_2.png'),
                    emoji(index: 2, image: 'assets/emoji_3.png'),
                    emoji(index: 3, image: 'assets/emoji_4.png'),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              width: 211,
              padding: EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: Color(0xff34D186),
                borderRadius: BorderRadius.circular(60),
              ),
              child: Align(
                child: Text(
                  'Rate Now',
                  style: buttonTextStyleGreen,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
