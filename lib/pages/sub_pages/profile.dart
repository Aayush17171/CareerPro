import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key, required bool isDarkMode}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Sample user data
  String userName = "Aayush Thanet";
  String userEmail = "Ayush.thanet@patancollege.edu.np";
  String userPhone = "+977 9800761590";
  String userLocation = "Kawasoti-17, Nawalpur";
  String userExperience = "2 years";
  String userSkills = "Flutter, Dart, UI/UX Design";
  String userEducation =
      "Bachelor's in Computer Science and Software Engineering";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        // Inside ProfilePage, modify the onPressed function of the FloatingActionButton:

        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditProfilePage(
                userName: userName,
                userEmail: userEmail,
                userPhone: userPhone,
                userLocation: userLocation,
                userExperience: userExperience,
                userSkills: userSkills,
                userEducation: userEducation,
              ),
            ),
          ).then((value) {
            // Update profile data upon returning from EditProfilePage
            if (value != null) {
              setState(() {
                userName = value['name'] ?? userName;
                userEmail = value['email'] ?? userEmail;
                userPhone = value['phone'] ?? userPhone;
                userLocation = value['location'] ?? userLocation;
                userExperience = value['experience'] ?? userExperience;
                userSkills = value['skills'] ?? userSkills;
                userEducation = value['education'] ?? userEducation;
              });
            }
          });
        },

        tooltip: 'Edit Profile',
        child: Icon(Icons.edit),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/profile.png'),
            ),
            SizedBox(height: 20),
            _buildUserInfoSection(),
            SizedBox(height: 30),
            _buildInfoRow(Icons.work, 'Experience', userExperience),
            SizedBox(height: 20),
            _buildInfoRow(Icons.star, 'Skills', userSkills),
            SizedBox(height: 20),
            _buildInfoRow(Icons.school, 'Education', userEducation),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildUserInfoSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          userName,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          userEmail,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 10),
        Text(
          userPhone,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 10),
        Text(
          userLocation,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(icon, size: 20, color: Colors.grey),
        SizedBox(width: 10),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                label,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                value,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class EditProfilePage extends StatefulWidget {
  final String userName;
  final String userEmail;
  final String userPhone;
  final String userLocation;
  final String userExperience;
  final String userSkills;
  final String userEducation;

  EditProfilePage({
    required this.userName,
    required this.userEmail,
    required this.userPhone,
    required this.userLocation,
    required this.userExperience,
    required this.userSkills,
    required this.userEducation,
  });

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _locationController;
  late TextEditingController _experienceController;
  late TextEditingController _skillsController;
  late TextEditingController _educationController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.userName);
    _emailController = TextEditingController(text: widget.userEmail);
    _phoneController = TextEditingController(text: widget.userPhone);
    _locationController = TextEditingController(text: widget.userLocation);
    _experienceController = TextEditingController(text: widget.userExperience);
    _skillsController = TextEditingController(text: widget.userSkills);
    _educationController = TextEditingController(text: widget.userEducation);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              controller: _phoneController,
              decoration: InputDecoration(labelText: 'Phone'),
            ),
            TextFormField(
              controller: _locationController,
              decoration: InputDecoration(labelText: 'Location'),
            ),
            TextFormField(
              controller: _experienceController,
              decoration: InputDecoration(labelText: 'Experience'),
            ),
            TextFormField(
              controller: _skillsController,
              decoration: InputDecoration(labelText: 'Skills'),
            ),
            TextFormField(
              controller: _educationController,
              decoration: InputDecoration(labelText: 'Education'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _saveProfileChanges(context);
              },
              child: Text('Save'),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                elevation: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _saveProfileChanges(BuildContext context) {
    // Gather updated profile data
    Map<String, String?> updatedData = {
      'name': _nameController.text,
      'email': _emailController.text,
      'phone': _phoneController.text,
      'location': _locationController.text,
      'experience': _experienceController.text,
      'skills': _skillsController.text,
      'education': _educationController.text,
    };

    // Pass updated data back to ProfilePage
    Navigator.pop(context, updatedData);
  }
}
