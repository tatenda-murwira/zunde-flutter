import 'package:flutter/material.dart';
import 'views/splash/splash_screen.dart';
import 'core/constants/colors.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(MkandoApp());
}

class MkandoApp extends StatelessWidget {
  const MkandoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Zunde',
      theme: ThemeData(
        primaryColor: zbGreen,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(backgroundColor: zbGreen),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(backgroundColor: zbGreen),
        ),
      ),
       initialRoute: AppRoutes.splash,
  onGenerateRoute: AppRoutes.generateRoute,
      home: SplashScreen(),
    );
  }
}
