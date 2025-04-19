import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notifications')),
      body: ListView(
        children: [
          ListTile(title: Text('Contribution due tomorrow')),
          ListTile(title: Text('Your turn to receive payout!')),
        ],
      ),
    );
  }
}