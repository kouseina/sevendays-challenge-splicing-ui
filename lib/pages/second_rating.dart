import 'package:flutter/material.dart';
import 'package:sevendays/widgets/theme.dart';

class SecondRating extends StatefulWidget {
  @override
  _SecondRatingState createState() => _SecondRatingState();
}

class _SecondRatingState extends State<SecondRating> {
  int selectedStar = 0;

  @override
  Widget build(BuildContext context) {
    Widget star({int index = 0}) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedStar = index;
          });
        },
        child: Image.asset(
          index <= selectedStar
              ? 'assets/ic_star_active.png'
              : 'assets/ic_star_nonactive.png',
          width: 50,
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80, right: 28, left: 28),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  'assets/illustration_rating.png',
                  width: 295,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Enjoy Your Meal',
                style: semiboldTextStyleLight,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Please rate our experience',
                style: regularTextStyleLightSecondary,
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  star(index: 0),
                  SizedBox(
                    width: 10,
                  ),
                  star(index: 1),
                  SizedBox(
                    width: 10,
                  ),
                  star(index: 2),
                  SizedBox(
                    width: 10,
                  ),
                  star(index: 3),
                  SizedBox(
                    width: 10,
                  ),
                  star(index: 4),
                ],
              ),
              SizedBox(
                height: 36,
              ),
              TextFormField(
                keyboardType: TextInputType.multiline,
                minLines: 3,
                maxLines: 3,
                decoration: InputDecoration(
                  fillColor: Color(0xffF8F8F8),
                  filled: true,
                  contentPadding: EdgeInsets.all(16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Your message',
                  hintStyle:
                      regularTextStyleLightSecondary.copyWith(fontSize: 14),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(13),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xff4074E6),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Align(
                      child: Text(
                    'Submit Review',
                    style: buttonTextStyleGreen,
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
