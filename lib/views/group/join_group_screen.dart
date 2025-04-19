import 'package:flutter/material.dart';
import '../../routes/app_routes.dart';


class JoinGroupScreen extends StatelessWidget {
  final TextEditingController _inviteCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B5E20), // 
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Join Group',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 2), 
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Enter Invite Code',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 8.0),
                  TextField(
                    controller: _inviteCodeController,
                    decoration: InputDecoration(
                      hintText: 'Enter group invite code',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      contentPadding: EdgeInsets.all(12.0),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Align(
                    alignment: Alignment.center,
                    child: TextButton.icon(
                      onPressed: () {
                        // TODO: Implement Scan QR Code functionality
                        print('Scan QR Code');
                      },
                      icon: Icon(Icons.qr_code_scanner,
                          color: const Color(0xFF1B5E20)),
                      label: Text(
                        'Scan QR Code',
                        style: TextStyle(color: const Color(0xFF1B5E20)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement join group logic with _inviteCodeController.text
                print('Join Group with code: ${_inviteCodeController.text}');
                Navigator.pushNamed(context, AppRoutes.dashboard);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1B5E20), 
                padding: EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(
                'Join Group',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'You\'ll need an invite code to join an existing savings group. Ask the group admin for the code or scan their QR code.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}