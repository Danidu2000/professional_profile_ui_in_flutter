import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Education',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(Icons.school, color: Colors.blue),
          title: Text('Bachelor of Ayurvedic Medicine And Sergury'),
          subtitle: Text('University of Kalaniya, 2028'),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(Icons.school, color: Colors.blue),
          title: Text('ICET Certified Developer'),
          subtitle: Text('Institute OF Computer Engineering Technology, 2024'),
        ),
      ],
    );
  }
}
