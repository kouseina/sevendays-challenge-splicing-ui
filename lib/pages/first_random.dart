import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/widgets/list_cart_item.dart';

class FirstRandom extends StatelessWidget {
  const FirstRandom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget detailPrice({
      String title = '',
      String price = '',
    }) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Color(0xff191919),
            ),
          ),
          Text(
            '\$$price',
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Color(0xff191919),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 36, left: 24, right: 24, bottom: 24),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'My Shopping Cart',
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff191919),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ListCartItem(
                  name: 'Burger Malleta',
                  place: 'McTheone',
                  imgUrl: 'assets/img_item_cart_1.png',
                  price: '90.00',
                ),
                ListCartItem(
                  name: 'Mojito Orange',
                  place: 'The Bar',
                  imgUrl: 'assets/img_item_cart_2.png',
                  price: '510.00',
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 26),
                  padding: EdgeInsets.all(26),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Informations',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Color(0xff191919),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      detailPrice(title: 'Sub total', price: '600.00'),
                      SizedBox(
                        height: 10,
                      ),
                      detailPrice(title: 'Delivery', price: '80.00'),
                      SizedBox(
                        height: 10,
                      ),
                      detailPrice(title: 'Total', price: '680.00'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(53),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xffFFC532),
                      borderRadius: BorderRadius.circular(53),
                    ),
                    child: Align(
                      child: Text(
                        'Checkout Now',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff2E221B),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(53),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(53),
                    ),
                    child: Align(
                      child: Text(
                        'Save to Wishlist',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
