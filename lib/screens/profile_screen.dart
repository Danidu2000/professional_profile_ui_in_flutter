import 'package:flutter/material.dart';
import 'package:professional_profile_ui_in_flutter/widgets/about_section.dart';
import 'package:professional_profile_ui_in_flutter/widgets/education_section.dart';
import 'package:professional_profile_ui_in_flutter/widgets/header_section.dart';
import 'package:professional_profile_ui_in_flutter/widgets/skills_section.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Professional Profile'),
        backgroundColor: Colors.black12,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderSection(),
            SizedBox(height: 24),
            AboutSection(),
            SizedBox(height: 24),
            SkillsSection(),
            SizedBox(height: 24),
            EducationSection(),
          ],
        ),
      ),
    );
  }
}
