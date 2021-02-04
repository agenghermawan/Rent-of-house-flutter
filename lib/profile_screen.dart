import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30),
            alignment: Alignment.center,
            child: Text(
              'Profile',
              style: GoogleFonts.poppins(
                  fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 30,
              left: 20,
            ),
            child: Text(
              'My Account',
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: Row(
              children: [
                Image.asset('assets/Ellipse8.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        'Ageng Hermawan',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        'Member Silver',
                        style: GoogleFonts.poppins(fontSize: 12),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 10,
              left: 20,
            ),
            child: Text(
              'My Rewards',
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30, left: 20),
            child: Row(
              children: [
                Image.asset('assets/voucher.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        'Coupon',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        'See The Coupons that you can use now',
                        style: GoogleFonts.poppins(fontSize: 10),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30, left: 20),
            child: Row(
              children: [
                Image.asset('assets/reward.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        'Special Rewards ',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        'See available promos that are just for you',
                        style: GoogleFonts.poppins(fontSize: 10),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30, left: 20),
            child: Row(
              children: [
                Image.asset('assets/card.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        'Credit Card ',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        'See your credit card ',
                        style: GoogleFonts.poppins(fontSize: 10),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 20,
              left: 25,
            ),
            child: Text(
              'Member Features',
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30, left: 30),
            child: Row(
              children: [
                Image.asset('assets/Capture.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        'Help Center',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        'Find the best answer to your questions',
                        style: GoogleFonts.poppins(fontSize: 10),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30, left: 30),
            child: Row(
              children: [
                Image.asset('assets/pengaturan.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        'Settings',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        'View and set your account preferences',
                        style: GoogleFonts.poppins(fontSize: 10),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
