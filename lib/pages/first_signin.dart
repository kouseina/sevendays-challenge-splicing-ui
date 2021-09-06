import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstSignin extends StatelessWidget {
  const FirstSignin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181A20),
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 40, right: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/logo_signin.png',
                width: 50,
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                'Welcome back. \nLet’s make money.',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              TextFormField(
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    fillColor: Color(0xff262A34),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Email',
                    hintStyle: GoogleFonts.openSans(
                      color: Color(0xff6F7075),
                      fontSize: 14,
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: 14,
                ),
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  fillColor: Color(0xff262A34),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Password',
                  hintStyle: GoogleFonts.openSans(
                    color: Color(0xff6F7075),
                    fontSize: 14,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Color(0xff6F7075),
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot My Password',
                  style: GoogleFonts.poppins(
                    color: Color(0xff6A6B70),
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 110,
              ),
              Container(
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(15),
                    backgroundColor: Color(0xffFCAC15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.openSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6B4909),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have account?',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
