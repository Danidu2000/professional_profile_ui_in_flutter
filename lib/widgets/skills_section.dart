import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  final List<Skill> skills = [
    Skill(name: 'Flutter', proficiencyLevel: 2),
    Skill(name: 'Java', proficiencyLevel: 5),
    Skill(name: 'React', proficiencyLevel: 3),
    Skill(name: 'Spring Boot', proficiencyLevel: 4),
    Skill(name: 'Angular', proficiencyLevel: 4),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Skills',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Column(
          children: skills.map((skill) => SkillItem(skill: skill)).toList(),
        ),
      ],
    );
  }
}

class SkillItem extends StatelessWidget {
  final Skill skill;

  SkillItem({required this.skill});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Row(
        children: [
          Expanded(child: Text(skill.name)),
          SizedBox(width: 8),
          Text('${skill.proficiencyLevel}/5'), // Display proficiency level as text
        ],
      ),
      trailing: _buildProficiencyIndicator(skill.proficiencyLevel),
    );
  }

  Widget _buildProficiencyIndicator(int level) {
    // Display a circle to represent proficiency level
    return Icon(
      Icons.square,
      color: _getProficiencyColor(level),
      size: 30,
    );
  }

  // Return color based on proficiency level
  Color _getProficiencyColor(int level) {
    if (level == 5) return Colors.green; // Excellent
    if (level == 4) return Colors.blue;  // Good
    if (level == 3) return Colors.orange; // Average
    return Colors.red;  // Below average
  }
}

// Define a Skill class to hold name and proficiency level
class Skill {
  final String name;
  final int proficiencyLevel; // 1 to 5 range for proficiency level

  Skill({required this.name, required this.proficiencyLevel});
}
