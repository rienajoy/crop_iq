import 'package:flutter/material.dart';
import 'settings.dart';  // Import the settings page

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Navigate to SettingsPage when the settings icon is clicked
              Navigator.of(context).pushNamed('/settings');
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Welcome to CropIQ Recommender System!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
