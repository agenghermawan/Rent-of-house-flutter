import 'package:flutter/material.dart';
import 'package:renthouse/Favorite_screen.dart';
import 'package:renthouse/main_screen.dart';
import 'package:renthouse/profile_screen.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedTabIndex = 0;

  void _onNavBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _listPage = <Widget>[
      MainScreen(),
      FavoriteScreen(),
      ProfileScreen(),
    ];

    final _bottomNavBarItems = <BottomNavigationBarItem>[
      // ignore: deprecated_member_use
      BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        // ignore: deprecated_member_use
        title: Text('Favorite'),
      ),
      BottomNavigationBarItem(
          // ignore: deprecated_member_use
          icon: Icon(Icons.person),
          // ignore: deprecated_member_use
          title: Text('Account')),
    ];

    final _bottomNavbar = BottomNavigationBar(
      items: _bottomNavBarItems,
      currentIndex: _selectedTabIndex,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.grey,
      onTap: _onNavBarTapped,
    );
    return Scaffold(
      body: Center(
        child: _listPage[_selectedTabIndex],
      ),
      bottomNavigationBar: _bottomNavbar,
    );
  }
}
