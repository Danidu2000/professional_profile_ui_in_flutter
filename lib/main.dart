import 'package:flutter/material.dart';
import 'package:professional_profile_ui_in_flutter/screens/profile_screen.dart';

void main() {
  runApp(MaterialApp(
    home: ProfileScreen(),
    theme: ThemeData(
      hintColor: Colors.blueAccent,
      textTheme: TextTheme(
        titleLarge: TextStyle(fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(color: Colors.grey[700]),
      ), colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(background: Colors.white),
    ),
  ));
}
