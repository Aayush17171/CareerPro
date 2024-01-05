import 'package:flutter/material.dart';
import 'package:newtesting/pages/login.dart';
import 'package:newtesting/pages/sub_pages/about.dart';
import 'package:newtesting/pages/sub_pages/favorite.dart';
import 'package:newtesting/pages/sub_pages/settings.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key, required this.isDarkMode}) : super(key: key);

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        children: [
          Card(
            margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            child: ListTile(
              leading: Icon(Icons.favorite_border, color: Colors.deepPurple),
              title: Text('Favorite jobs'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavoritePage()),
                );
              },
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            child: ListTile(
              leading: Icon(Icons.settings, color: Colors.deepPurple),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            child: ListTile(
              leading: Icon(Icons.info, color: Colors.deepPurple),
              title: Text('About Us'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUsPage()),
                );
              },
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            child: ListTile(
              leading: Icon(Icons.logout, color: Colors.deepPurple),
              title: Text('Log out'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
