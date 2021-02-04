import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:renthouse/model/house.dart';
import 'package:renthouse/widget/Confirm_screen.dart';
import 'package:renthouse/widget/rating_start.dart';
import 'package:supercharged/supercharged.dart';

class CheckoutScreen extends StatefulWidget {
  final Rentplace rent;
  CheckoutScreen({@required this.rent});
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Card(
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        width: 50, height: 50, child: Icon(Icons.arrow_back)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Center(
                      child: Text(
                    'DETAILS',
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  )),
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              padding: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 130,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.rent.name,
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              widget.rent.location,
                              style: GoogleFonts.poppins(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            RatingStars(widget.rent.rate)
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(widget.rent.imageAppbar),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
            child: Container(
              color: '#E5E5E5'.toColor(),
            ),
          ),
          Card(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Check In',
                        style: GoogleFonts.poppins(fontSize: 12),
                      ),
                      Text(
                        '10 Feb 2021',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Start 14.00',
                        style: GoogleFonts.poppins(fontSize: 12),
                      ),
                    ],
                  ),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Check Out',
                          style: GoogleFonts.poppins(fontSize: 12),
                        ),
                        Text(
                          '11 Feb 2021',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Start 14.00',
                          style: GoogleFonts.poppins(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1 Night',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
            child: Container(
              color: '#E5E5E5'.toColor(),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Studio',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  '4 Beedroom , 1 Garage , 1 Swimming Pool',
                  style: GoogleFonts.poppins(fontSize: 16),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: Card(
              color: Colors.lightBlueAccent,
              child: Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Non - Refundable',
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'After 10 Feb ; 00:01 ',
                      style: GoogleFonts.poppins(fontSize: 12),
                    ),
                    Text(
                      'Fees that have been paid are non-refundable',
                      style: GoogleFonts.poppins(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
            child: Container(
              color: '#E5E5E5'.toColor(),
            ),
          ),
          Card(
            child: Container(
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Detail Contact',
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'This E - Voucher will be sent to your Contact',
                    style: GoogleFonts.poppins(
                        fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Text(
                            'Ageng Hermawan',
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          'agenghermawan16@gmail.com',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '+62 89660776514',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 35, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total',
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      NumberFormat.currency(locale: 'en-us')
                          .format(widget.rent.price),
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                  child: Container(
                    color: '#E5E5E5'.toColor(),
                  ),
                ),
                Column(
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ConfirmScreen(
                                rent: widget.rent,
                              );
                            },
                          ),
                        );
                      },
                      icon: Icon(Icons.confirmation_num, size: 18),
                      label: Text("Confirm"),
                    )
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
