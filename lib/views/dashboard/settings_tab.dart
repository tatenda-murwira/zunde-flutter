import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // Consistent background color
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Group Settings', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
             Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.symmetric(vertical: 4),
              child: ListTile(
                title: Text('Edit Group Name',  style: TextStyle(fontWeight: FontWeight.w500)),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to edit group name screen
                },
              ),
            ),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
               margin: EdgeInsets.symmetric(vertical: 4),
              child: ListTile(
                title: Text('Change Cycle Type',  style: TextStyle(fontWeight: FontWeight.w500)),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to change cycle type
                },
              ),
            ),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
               margin: EdgeInsets.symmetric(vertical: 4),
              child: ListTile(
                title: Text('Change Contribution Amount',  style: TextStyle(fontWeight: FontWeight.w500)),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to change contribution amount
                },
              ),
            ),
             Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
               margin: EdgeInsets.symmetric(vertical: 4),
              child: ListTile(
                title: Text('Notifications Settings',  style: TextStyle(fontWeight: FontWeight.w500)),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigate to change contribution amount
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}