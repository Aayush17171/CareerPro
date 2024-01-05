import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ApplyFormPage extends StatefulWidget {
  final String jobTitle;

  ApplyFormPage({required this.jobTitle});
  @override
  _ApplyFormPageState createState() => _ApplyFormPageState();
}

class _ApplyFormPageState extends State<ApplyFormPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  String _resumeFileName = '';
  String _coverLetterFileName = '';
  // String _jobTitle = '';

  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      Map<String, dynamic> formData = {
        'jobTitle': widget.jobTitle,
        'name': _nameController.text,
        'email': _emailController.text,
        'phone': _phoneController.text,
        'resume': _resumeFileName,
        'coverLetter': _coverLetterFileName,
      };

      try {
        await _firestore.collection('applicants').add(formData);
        print('Form Submitted:');
        print(formData);

        // Show a success dialog
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Job Apply Successful'),
              content:
                  Text('Your application has been submitted successfully.'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    // Clear form fields
                    _nameController.clear();
                    _emailController.clear();
                    _phoneController.clear();

                    setState(() {
                      _resumeFileName = '';
                      _coverLetterFileName = '';
                    });
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      } catch (e) {
        print('Error submitting form: $e');
        // Handle error (e.g., show error message)
      }
    }
  }

  void _uploadResume() async {
    // Implement logic to upload Resume/CV file
    // This is a placeholder, you should add your own file picker logic here
    // For example, use file picker plugins like file_picker
    String? fileName = await showFilePicker();
    if (fileName != null && fileName.isNotEmpty) {
      setState(() {
        _resumeFileName = fileName;
      });
    }
  }

  void _uploadCoverLetter() async {
    // Implement logic to upload Cover Letter file
    // This is a placeholder, you should add your own file picker logic here
    // For example, use file picker plugins like file_picker
    String? fileName = await showFilePicker();
    if (fileName != null && fileName.isNotEmpty) {
      setState(() {
        _coverLetterFileName = fileName;
      });
    }
  }

  Future<String?> showFilePicker() async {
    // Placeholder function for file picker, return file name or path
    // You can implement your own file picker logic using plugins
    // Here, we use a simple dialog to simulate file selection
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select File'),
          content: Text('Placeholder - Use file picker to select a file.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pop('SelectedFile.txt'); // Replace with actual file name
              },
              child: Text('Select'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Apply for ${widget.jobTitle}',
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
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: 'Full Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _phoneController,
                  decoration: InputDecoration(labelText: 'Phone Number'),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Resume/CV: $_resumeFileName',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: _uploadResume,
                      child: Text('Upload'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurple, // Set the background color
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Cover Letter: $_coverLetterFileName',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: _uploadCoverLetter,
                      child: Text('Upload'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurple, // Set the background color
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _submitForm,
                  child: Text('Apply'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    elevation: 3,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }
}
