// ignore_for_file: unused_import

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:newtesting/firebase_options.dart';
import 'package:newtesting/pages/sub_pages/fav.dart';
import 'package:newtesting/pages/sub_pages/homebody.dart';
import 'package:newtesting/pages/sub_pages/more.dart';
import 'package:newtesting/pages/sub_pages/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  bool _isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkMode ? _buildDarkTheme() : _buildLightTheme(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: _isDarkMode ? Colors.black : Colors.white,
        appBar: AppBar(
          toolbarHeight: 80,
          title: Text(
            'CareerPro',
            style: TextStyle(
              color: _isDarkMode ? Colors.white : Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          // actions: [
          //   IconButton(
          //     icon:
          //         _isDarkMode ? Icon(Icons.dark_mode) : Icon(Icons.light_mode),
          //     onPressed: () {
          //       _toggleTheme();
          //     },
          //     color: _isDarkMode ? Colors.deepPurple : Colors.deepOrange,
          //   ),
          // ],
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children: _pages.map<Widget>((page) => page).toList(),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: _isDarkMode ? Colors.black : Colors.white,
          color: _isDarkMode ? Colors.deepPurple : Colors.deepPurple,
          buttonBackgroundColor:
              _isDarkMode ? Colors.deepPurple : Colors.deepPurple,
          height: 60,
          items: <Widget>[
            Icon(Icons.home, color: Colors.white, size: 30),
            // Icon(Icons.favorite, color: Colors.white, size: 30),
            Icon(Icons.person, color: Colors.white, size: 30),
            Icon(Icons.more_horiz, color: Colors.white, size: 30),
          ],
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  ThemeData _buildLightTheme() {
    return ThemeData(
      primaryColor: Color(0xFFFF5722),
      scaffoldBackgroundColor: Colors.white,
      hintColor: Colors.grey,
      cardTheme: CardTheme(
        color: Colors.grey[100],
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      inputDecorationTheme: InputDecorationTheme(
        // Set the color of prefixIcon for both light and dark modes
        prefixIconColor: Colors.black,
      ),
      textTheme: TextTheme(
        bodyText1: TextStyle(color: Colors.black),
        bodyText2: TextStyle(color: Colors.black),
      ),
      cardColor: Colors.white,
    );
  }

  ThemeData _buildDarkTheme() {
    return ThemeData(
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      hintColor: Colors.white,
      backgroundColor: Colors.deepPurple,
      cardTheme: CardTheme(
        color: Colors.white,
      ),
      iconTheme: IconThemeData(color: Colors.white),
      inputDecorationTheme: InputDecorationTheme(
        prefixIconColor: Colors.white,
      ),
      textTheme: TextTheme(
        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.white),
      ),
      cardColor: Colors.grey[800],
    );
  }

  List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages = [
      Container(
        child: MainHomeBody(isDarkMode: _isDarkMode),
      ),
      // Container(
      //   child: FavPage(isDarkMode: _isDarkMode),
      // ),
      Container(
        child: ProfilePage(isDarkMode: _isDarkMode),
      ),
      Container(
        child: MorePage(isDarkMode: _isDarkMode),
      ),
    ];
  }
}
