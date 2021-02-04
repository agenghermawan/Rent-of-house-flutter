import 'package:flutter/material.dart';
import 'package:renthouse/detail_screen.dart';
import 'package:renthouse/model/house.dart';
// import 'package:supercharged/supercharged.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:renthouse/widget/rating_start.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() => runApp(MainScreen());

class MainScreen extends StatelessWidget {
  // final Rentplace rent;
  // MainScreen({@required this.rent});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(
              color: Colors.white10,
              // color: "#FEFEFE".toColor(),
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 180,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 42, top: 22),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/Ellipse8.png")),
                                    borderRadius: BorderRadius.circular(50)),
                                width: 50,
                                height: 50,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    child: Text(
                                      'Hello Ageng',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10, top: 1),
                                    child: Text(
                                      'Good Morning',
                                      style: GoogleFonts.poppins(fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 43, top: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Find Your\nPerfect Place!',
                                    style: GoogleFonts.poppins(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 215,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: rentPlaceList.sublist(0, 3).map((place) {
                      return FlatButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailScreen(
                              rent: place,
                            );
                          }));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white70),
                              width: 231,
                              height: 209,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(place.imageAppbar),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20)),
                                    ),
                                    width: 231,
                                    height: 150,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 5),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  place.name,
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                Text(
                                                  place.locationCard,
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 10),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: RatingBar.builder(
                                          initialRating: place.rate,
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
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Recomended For You',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  width: double.infinity,
                  child: ListView(
                    children: rentPlaceList.sublist(3, 6).map((place) {
                      return FlatButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailScreen(
                              rent: place,
                            );
                          }));
                        },
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)),
                              height: 100,
                              child: Card(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Expanded(
                                        flex: 1,
                                        child: Container(
                                            height: 100,
                                            child: Container(
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  place.imageAppbar,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            )),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Text(
                                              place.name,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Text(
                                              place.locationCard,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 10),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            RatingBar.builder(
                                              initialRating: place.rate,
                                              itemSize: 20,
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
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Image.asset('assets/vektor.png'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
