import 'package:flutter/material.dart';
import 'package:renthouse/model/house.dart';

class BookScreen extends StatelessWidget {
  final Rentplace rent;
  BookScreen({@required this.rent});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: rentPlaceList.map((place) {
        return Container(
          child: (Text(place.name)),
        );
      }).toList()),
    );
  }
}
