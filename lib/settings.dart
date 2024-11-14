import 'package:flutter/material.dart';
import 'login.dart'; // Ensure the LoginPage is imported
import 'editprofile.dart'; // Ensure the EditProfilePage is imported

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isPushNotificationsEnabled = true; // Initial value for the switch

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        leading: Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            SectionTitle(title: 'Account'),
            SettingsItem(
              icon: Icons.person,
              title: 'Edit Profile',
              onTap: () {
                // Navigate to the EditProfilePage when clicked
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProfileEditPage(), // Ensure EditProfilePage is imported
                  ),
                );
              },
            ),
            SettingsItem(icon: Icons.security, title: 'Security'),
            SettingsItem(icon: Icons.notifications, title: 'Notifications'),
            SettingsItem(icon: Icons.privacy_tip, title: 'Privacy'),

            SectionTitle(title: 'Support & About'),
            SettingsItem(icon: Icons.subscriptions, title: 'My Subscription'),
            SettingsItem(icon: Icons.help, title: 'Help & Support'),
            SettingsItem(icon: Icons.policy, title: 'Terms and Policies'),

            SectionTitle(title: 'Preferences'),
            SwitchListTile(
              title: Text('Push Notifications'),
              value: _isPushNotificationsEnabled, // Dynamically change based on state
              onChanged: (value) {
                setState(() {
                  _isPushNotificationsEnabled = value; // Update state when switch is toggled
                });
              },
              secondary: Icon(Icons.notifications),
              activeColor: Colors.green, // Set the active color to green
            ),

            SectionTitle(title: 'Actions'),
            SettingsItem(icon: Icons.report_problem, title: 'Report a problem'),
            SettingsItem(icon: Icons.add, title: 'Add account'),
            SettingsItem(
              icon: Icons.logout,
              title: 'Log out',
              onTap: () {
                // Navigate to the homepage (or login page if that's your first screen)
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => LoginPage(), // Ensure HomePage is imported
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class SettingsItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  const SettingsItem({
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }
}
