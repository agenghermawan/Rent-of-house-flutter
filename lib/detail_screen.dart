import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import 'package:renthouse/gallery_screen.dart';

import 'package:renthouse/widget/checkout_screen.dart';

import 'model/house.dart';

class DetailScreen extends StatefulWidget {
  final Rentplace rent;
  DetailScreen({@required this.rent});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.lightBlue,
          ),
          SafeArea(
            child: Container(
              color: Colors.white,
            ),
          ),
          SafeArea(
            child: Container(
              width: double.infinity,
              height: 296,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.rent.imageAppbar),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 250),
                      padding:
                          EdgeInsets.symmetric(vertical: 26, horizontal: 26),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        widget.rent.name,
                                        style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        widget.rent.location,
                                        style: GoogleFonts.poppins(
                                            fontSize: 14, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 65),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          child: RatingBar.builder(
                                            initialRating: widget.rent.rate,
                                            itemSize: 15,
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        'Listing Agent',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return GalleryScreen(
                                      rent: widget.rent,
                                    );
                                  },
                                ),
                              );
                            },
                            icon: Icon(Icons.picture_in_picture, size: 18),
                            label: Text("See Full Picture"),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Image.asset('assets/mask.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 60),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.rent.agent,
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              'House Owner',
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/Call.png'),
                              Image.asset('assets/Messange.png')
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 24, left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'House Facilities',
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, top: 10, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset('assets/swimmingpool.png')),
                          Text(
                            'Swimming Pool',
                            style: GoogleFonts.poppins(fontSize: 10),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset('assets/beedroom.png')),
                          Text(
                            '4 Beedroom',
                            style: GoogleFonts.poppins(fontSize: 10),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset('assets/garage.png')),
                          Text(
                            'Garage',
                            style: GoogleFonts.poppins(fontSize: 10),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, top: 24),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Description',
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, top: 10, right: 30),
                  child: Column(
                    children: [
                      Text(
                        widget.rent.description,
                        style: GoogleFonts.poppins(fontSize: 12),
                        textAlign: TextAlign.justify,
                      )
                    ],
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
                            'Price',
                            style: GoogleFonts.poppins(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            NumberFormat.currency(locale: 'en-us')
                                .format(widget.rent.price),
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Container(
                        child: Column(
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return CheckoutScreen(
                                        rent: widget.rent,
                                      );
                                    },
                                  ),
                                );
                              },
                              icon: Icon(Icons.add, size: 18),
                              label: Text("Book Now"),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
