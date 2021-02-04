import 'package:flutter/material.dart';

// import 'package:renthouse/main_screen.dart';
import 'package:renthouse/widget/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rent House',
      theme: ThemeData.light(),
      home: MainPage(),
    );
  }
}
