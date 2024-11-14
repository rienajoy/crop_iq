import 'package:flutter/material.dart';
import 'login.dart';  // Import the login page
import 'settings.dart';  // Import the settings page
import 'home.dart';

void main() {
  runApp(CropIQApp());
}

class CropIQApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CropIQ Recommender System',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),  // Set HomePage as the home screen
      routes: {
        '/settings': (context) => SettingsPage(),  // Add route for SettingsPage
        // Add more routes for other pages as needed in the future
      },
    );
  }
}
