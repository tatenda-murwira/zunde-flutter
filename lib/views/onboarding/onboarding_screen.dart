import 'package:flutter/material.dart';
import '../../routes/app_routes.dart';
import '../../core/constants/colors.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              children: [
                Center(child: Text('Welcome to Mkando', style: TextStyle(color: zbGreen))),
                Center(child: Text('Create or Join Groups', style: TextStyle(color: zbGreen))),
                Center(child: Text('Track Contributions', style: TextStyle(color: zbGreen))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, AppRoutes.login),
              child: Text('Get Started'),
            ),
          )
        ],
      ),
    );
  }
}