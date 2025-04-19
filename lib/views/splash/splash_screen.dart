import 'package:flutter/material.dart';
import '../../routes/app_routes.dart';
import '../../core/constants/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, AppRoutes.onboarding);
    });

    return Scaffold(
      backgroundColor: zbGreen,
      body: Center(
        child: Text('Mkando', style: TextStyle(color: Colors.white, fontSize: 32)),
      ),
    );
  }
}