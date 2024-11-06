import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          'I’m Danidu Pramuditha, a driven trainee software engineer with a strong command of Spring Boot, Java, React, and Angular. My passion for technology keeps me at the forefront of new innovations, and I take pride in consistently delivering impactful contributions to software projects. I thrive on blending technical precision with a touch of creativity, always striving to push the boundaries of what’s possible. While staying up-to-date with the latest industry trends, I remain grounded in the essential fundamentals. Currently working as a Trainee Software Engineer at iCET.',
          style: TextStyle(color: Colors.grey[700]),
        ),
      ],
    );
  }
}
