import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondSignin extends StatelessWidget {
  const SecondSignin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget InputPrimary(
        {String label = 'Username', String hint = 'Masukkan username'}) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.openSans(
              fontSize: 14,
              color: Color(0xff17171A),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            obscureText: label == 'Password' ? true : false,
            style: GoogleFonts.openSans(
              fontSize: 16,
              color: Color(0xff17171A),
              fontWeight: FontWeight.w600,
            ),
            decoration: InputDecoration(
              fillColor: Color(0xffF3F3F3),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(70),
                borderSide: BorderSide.none,
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              hintText: hint,
              hintStyle: GoogleFonts.openSans(
                fontSize: 16,
                color: Color(0xff6F7075),
                fontWeight: FontWeight.normal,
              ),
            ),
          )
        ],
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 60, left: 40, right: 40, bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/illustration_paper.png',
                  width: 245,
                ),
              ),
              SizedBox(
                height: 53,
              ),
              InputPrimary(label: 'Email', hint: 'Masukkan email'),
              SizedBox(
                height: 20,
              ),
              InputPrimary(label: 'Password', hint: 'Masukkan password'),
              SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff5468FF),
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(70),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Log In',
                    style: GoogleFonts.openSans(
                      fontSize: 18,
                      color: Color(0xffF8F8F8),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  border: Border.all(
                    color: Color(0xffD3D3D3),
                  ),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70),
                      )),
                  onPressed: () {},
                  child: Text(
                    'Create New Account',
                    style: GoogleFonts.openSans(
                      fontSize: 18,
                      color: Color(0xffCFCFCF),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
