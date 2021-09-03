import 'package:flutter/material.dart';
import 'package:sevendays/pages/first_splash.dart';
import 'package:sevendays/pages/second_splash.dart';

void main() => runApp(SevenDays());

class SevenDays extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seven Days',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SecondSplash(),
    );
  }
}
