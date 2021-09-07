import 'package:flutter/material.dart';
import 'package:sevendays/widgets/theme.dart';

class FirstEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/illustration_empty_1.png',
                  width: 240,
                ),
                Column(
                  children: [
                    Text(
                      'Success Order',
                      style: boldTextStyleLight,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'We will delivery your package \n as soon as possible',
                      style: regularTextStyleLight,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: 200,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.all(15),
                            backgroundColor: Color(0xffF94593),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            )),
                        onPressed: () {},
                        child: Text(
                          'Done',
                          style: buttonTextStyle,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
