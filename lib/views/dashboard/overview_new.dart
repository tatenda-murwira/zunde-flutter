import 'package:flutter/material.dart';
import 'package:mukando_app/core/constants/colors.dart';
import '../../routes/app_routes.dart'; 
class NewOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView( 
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
                      fontWeight: FontWeight.w400, 
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '\$0.00', 
                    style: TextStyle(
                      fontSize: 36.0,  
                      fontWeight: FontWeight.w700, 
                      color:zbGreen, 
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
                      Icon(Icons.timer, color: zbGreen, size: 24,), 
                      SizedBox(width: 8.0),
                      Text(
                        '00:00:00', 
                        style: TextStyle(
                          fontSize: 24.0, 
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '-----,-----, ----', 
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
                backgroundColor: zbGreen,
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
                      fontWeight: FontWeight.w600, 
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.0), 
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.notifications);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: zbGreen,
                padding: EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.notifications_outlined, color: Colors.white, size: 24,),
                 
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
             SizedBox(height: 12.0), 
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.tips);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: zbGreen,
                padding: EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.lightbulb_outline, color: Colors.white, size: 24,), 
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
                fontSize: 18.0, 
                fontWeight: FontWeight.w600, 
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8.0),
           

            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.symmetric(vertical: 4),
              child: ListTile(
                title: Text(
                  'No Activity Yet',
                  style: TextStyle(fontWeight: FontWeight.w500

                  ),
                ),
               
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}