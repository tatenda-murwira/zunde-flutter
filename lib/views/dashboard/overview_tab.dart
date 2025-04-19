import 'package:flutter/material.dart';
import '../../routes/app_routes.dart'; // Import your AppRoutes

// --- Overview Screen ---  (Modified to match design)
class OverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // Background color of the design
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView( // Make it scrollable
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Group Balance',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400, // Regular weight
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '\$120', // Replace with your dynamic balance
                    style: TextStyle(
                      fontSize: 36.0,  // Larger font size
                      fontWeight: FontWeight.w700, // Use bold
                      color: const Color(0xFF1B5E20), // ZB Green
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Total contributed this cycle',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Next Payout in',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Icon(Icons.timer, color: const Color(0xFF1B5E20), size: 24,), //Larger icon
                      SizedBox(width: 8.0),
                      Text(
                        '72:00:00', // Replace with your payout time
                        style: TextStyle(
                          fontSize: 24.0, //Larger font
                          fontWeight: FontWeight.w500, // Medium weight
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Thursday, June 15', // Replace with your payout date
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.contribution);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1B5E20),
                padding: EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.monetization_on, color: Colors.white, size: 24,), //Larger icon
                  SizedBox(width: 8.0),
                  Text(
                    'Make a Contribution',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600, // Semi-bold
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.0), // Reduced spacing
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.notifications);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1B5E20),
                padding: EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.notifications_outlined, color: Colors.white, size: 24,), //Larger icon
                  SizedBox(width: 8.0),
                  Text(
                    'View Notifications',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(height: 12.0), // Reduced spacing
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.tips);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1B5E20),
                padding: EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.lightbulb_outline, color: Colors.white, size: 24,), //Larger icon
                  SizedBox(width: 8.0),
                  Text(
                    'Savings Tips',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.0),
            Text(
              'Recent Activity',
              style: TextStyle(
                fontSize: 18.0,  // Smaller font size
                fontWeight: FontWeight.w600, // Semi-bold
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8.0),
            // Example of recent activity items
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.symmetric(vertical: 4),
              child: ListTile(
                title: Text(
                  'Sarah contributed \$20',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Text('2 hours ago', style: TextStyle(fontSize: 12, color: Colors.grey[600])),
              ),
            ),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.symmetric(vertical: 4),
              child: ListTile(
                title: Text(
                  'John contributed \$30',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Text('Yesterday',  style: TextStyle(fontSize: 12, color: Colors.grey[600])),
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}