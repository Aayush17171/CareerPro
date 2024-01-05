import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios, // Use the iOS back arrow icon
            color: Colors.black, // Set the icon color to black
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          Card(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text('Notifications'),
                  trailing: Switch(
                    value:
                        true, // Replace with your logic for notification status
                    onChanged: (bool newValue) {
                      // Implement logic to change notification status
                    },
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.language),
                  title: Text('Language'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // Add functionality to change language settings
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.security),
                  title: Text('Privacy'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // Add functionality to navigate to privacy settings
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text('Help & Support'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // Add functionality to navigate to help & support page
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
