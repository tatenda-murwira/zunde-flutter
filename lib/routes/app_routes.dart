import 'package:flutter/material.dart';
import '../views/splash/splash_screen.dart';
import '../views/onboarding/onboarding_screen.dart';
import '../views/auth/login_screen.dart';
import '../views/group/create_group_screen.dart';
import '../views/group/join_group_screen.dart';
import '../views/dashboard/group_dashboard.dart';
import '../views/contributions/contribution_screen.dart';
import '../views/notifications/notifications_screen.dart';
import '../views/tips/tips_screen.dart';
import '../views/auth/otp_screen.dart';
import '../views/auth/signup_screen.dart';
import '../views/payments/make_payment.dart';
import '../views/payments/bank_card.dart';
import '../views/payments/onemoney.dart';
import '../views/payments/mastercard.dart';
import '../views/payments/visa.dart';
import '../views/payments/ecocash.dart';

class AppRoutes {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String createGroup = '/create-group';
  static const String joinGroup = '/join-group';
  static const String dashboard = '/dashboard';
  static const String contribution = '/contribution';
  static const String notifications = '/notifications';
  static const String tips = '/tips';
   static const String otpVerification = '/otpVerification';
    static const String signup = '/signup';
    static const String payment ='/payment';
    static const String ecocash ='/ecocash';
    static const String bankcard ='/bankcard';
    static const String mastercard ='/mastercard';
    static const String visa ='/visa';
    static const String onemoney ='/onemoney';
    

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case onboarding:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case createGroup:
        return MaterialPageRoute(builder: (_) => CreateGroupScreen());
      case joinGroup:
        return MaterialPageRoute(builder: (_) => JoinGroupScreen());
      case dashboard:
        return MaterialPageRoute(builder: (_) => GroupDashboard());
      case contribution:
        return MaterialPageRoute(builder: (_) => ContributionScreen());
         case otpVerification:
        return MaterialPageRoute(builder: (_) => (OtpScreen(phoneNumber: '',)));
      case notifications:
        return MaterialPageRoute(builder: (_) => NotificationScreen());
      case signup:
        return MaterialPageRoute(builder: (_) => SignupScreen());
      case tips:
        return MaterialPageRoute(builder: (_) => TipsScreen());
      case payment:
        return MaterialPageRoute(builder: (_) => PaymentScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('Page not found')),
          ),
        );
    }
  }
}