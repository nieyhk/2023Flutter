import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Theme:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            _buildThemeMenu(context),
            Divider(),
            Text(
              'Language:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            _buildLanguageMenu(context),
          ],
        ),
      ),
    );
  }

  Widget _buildThemeMenu(BuildContext context) {
    return DropdownButton<String>(
      items: ['Light', 'Dark']
          .map((String theme) => DropdownMenuItem<String>(
        value: theme,
        child: Text(theme),
      ))
          .toList(),
      onChanged: (String? value) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Theme changed to $value'),
          ),
        );
      },
    );
  }

  Widget _buildLanguageMenu(BuildContext context) {
    return DropdownButton<String>(
      items: ['English', 'Spanish', 'French']
          .map((String language) => DropdownMenuItem<String>(
        value: language,
        child: Text(language),
      ))
          .toList(),
      onChanged: (String? value) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Language changed to $value'),
          ),
        );
      },
    );
  }
}
