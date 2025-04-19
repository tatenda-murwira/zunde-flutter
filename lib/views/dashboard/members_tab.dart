
import 'package:flutter/material.dart';

class MembersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // Consistent background
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Group Members',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            // Example member list
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.symmetric(vertical: 4),
              child: ListTile(
                leading: CircleAvatar(child: Text('S'), backgroundColor: const Color(0xFFD4EDDA)), //Light green
                title: Text('Sarah',  style: TextStyle(fontWeight: FontWeight.w500)),
                subtitle: Text('Admin'),
              ),
            ),
             Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.symmetric(vertical: 4),
              child: ListTile(
                leading: CircleAvatar(child: Text('J'),  backgroundColor: const Color(0xFFD4EDDA)),
                title: Text('John',  style: TextStyle(fontWeight: FontWeight.w500)),
                subtitle: Text('Member'),
              ),
            ),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.symmetric(vertical: 4),
              child: ListTile(
                leading: CircleAvatar(child: Text('P'),  backgroundColor: const Color(0xFFD4EDDA)),
                title: Text('Peter',  style: TextStyle(fontWeight: FontWeight.w500)),
                subtitle: Text('Member'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
