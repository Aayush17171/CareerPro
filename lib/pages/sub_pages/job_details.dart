import 'package:flutter/material.dart';
import 'package:newtesting/pages/sub_pages/apply.dart';

class JobDetailPage extends StatelessWidget {
  final String title;
  final String company;
  final String location;
  final String salary;
  final String imageUrl;

  JobDetailPage({
    required this.title,
    required this.company,
    required this.location,
    required this.salary,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Display job image
              Image.network(
                imageUrl,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              // Job details section
              _buildSectionTitle('Job Details'),
              _buildDetailRow('Company', company),
              _buildDetailRow('Location', location),
              _buildDetailRow('Salary', salary),
              SizedBox(height: 20),
              // Qualifications required section
              _buildSectionTitle('Qualifications Required'),
              _buildQualifications(),
              SizedBox(height: 20),
              // Experience required section
              _buildSectionTitle('Experience Required'),
              _buildExperience(),
              SizedBox(height: 20),
              // Apply button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ApplyFormPage(jobTitle: title)),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple, // Set the background color
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3,
                  ),
                  child: Text(
                    'Apply Now',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildQualifications() {
    return Text(
      'Minimum bachelor\'s degree in related field is mandatory.',
      style: TextStyle(fontSize: 16),
    );
  }

  Widget _buildExperience() {
    return Text(
      'Minimum one and half years of experiences required in related field.',
      style: TextStyle(fontSize: 16),
    );
  }
}
