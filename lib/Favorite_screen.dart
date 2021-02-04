import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renthouse/model/house.dart';
import 'package:renthouse/detail_screen.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Text(
              'Trending House',
              style: GoogleFonts.poppins(
                  fontSize: 30, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'You can find trending house in here',
              style: GoogleFonts.poppins(fontSize: 18),
            ),
          ),
          Card(
            child: Container(
              height: 200,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: rentPlaceList.sublist(6, 9).map((place) {
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
                          height: 200,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(place.imageAppbar),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                ),
                                width: 231,
                                height: 150,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.only(right: 20, bottom: 10),
                child: Text(
                  'Favorite House',
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                child: Image.asset(
                  'assets/favorite.png',
                  width: 20,
                  height: 20,
                ),
              )
            ],
          ),
          Container(
            height: 150,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: rentPlaceList.sublist(9, 11).map((place) {
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
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(place.imageAppbar),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  width: 150,
                                  height: 150,
                                ),
                              ],
                            ),
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
            margin: EdgeInsets.only(top: 20),
            height: 150,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: rentPlaceList.sublist(11, 13).map((place) {
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
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(place.imageAppbar),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  width: 150,
                                  height: 150,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
