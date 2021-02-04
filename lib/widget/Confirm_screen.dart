import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:renthouse/model/house.dart';
import 'package:renthouse/widget/main_page.dart';

class ConfirmScreen extends StatefulWidget {
  final Rentplace rent;
  ConfirmScreen({@required this.rent});
  @override
  _ConfirmScreenState createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 100, left: 30, right: 30),
                child: Image.asset('assets/confirm.png'),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 40),
            child: Text(
              'Yay , Your booking completed',
              style: GoogleFonts.poppins(fontSize: 16),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Container(
                  child: Text(
                    'Now you able to find some other house and order again as a self reward',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                )
              ],
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
                        return MainPage();
                      },
                    ),
                  );
                },
                icon: Icon(Icons.table_chart_sharp, size: 18),
                label: Text("Back to Menu"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
