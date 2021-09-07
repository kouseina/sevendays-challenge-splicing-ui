import 'package:flutter/material.dart';
import 'package:sevendays/widgets/theme.dart';

class SecondEmpty extends StatelessWidget {
  const SecondEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1B1B33),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/illustration_empty_2.png',
            width: 375,
          ),
          Column(
            children: [
              Text(
                'Boost Profit!',
                style: boldTextStyleDark,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Our tools are helping business \nto grow much faster',
                style: lightTextStyleDark,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(100),
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(17),
                  decoration: BoxDecoration(
                    color: Color(0xff808EE0),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.asset(
                    'assets/ic_rocket.png',
                    width: 32,
                    height: 32,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          )
        ],
      ),
    );
  }
}
