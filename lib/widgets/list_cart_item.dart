import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListCartItem extends StatefulWidget {
  String name;
  String place;
  int mount;
  String imgUrl;
  String price;

  ListCartItem(
      {this.name = '',
      this.place = '',
      this.mount = 0,
      this.imgUrl = 'assets/img_item_cart_1.png',
      this.price = ''});

  @override
  _ListCartItemState createState() => _ListCartItemState();
}

class _ListCartItemState extends State<ListCartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 26),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  widget.imgUrl,
                  width: 80,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff191919),
                    ),
                  ),
                  Text(
                    widget.place,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0xffA3A8B8),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 6, right: 6, top: 13, bottom: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (widget.mount > 0) {
                              widget.mount--;
                            }
                          });
                        },
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            color: Color(0xffD9D9D9),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Align(
                            child: Text(
                              '-',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        widget.mount.toString(),
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff191919),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            widget.mount++;
                          });
                        },
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            color: Color(0xff111111),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Align(
                            child: Text(
                              '+',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  '\$${widget.price}',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff191919),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
