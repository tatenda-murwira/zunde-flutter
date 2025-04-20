import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../routes/app_routes.dart';
import '../../core/constants/colors.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.white],
          
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: 3,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  itemBuilder: (context, index) {
                    return _buildPageContent(context, index);
                  },
                ),
              ),
              _buildPageIndicator(),
              const SizedBox(height: 20),
              _buildGetStartedButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPageContent(BuildContext context, int index) {
    String title = '';
    String description = '';
    String animationAsset = ''; 

    switch (index) {
      case 0:
        title = 'Welcome to Zunde';
        description = 'Your platform for group contributions and financial management.';
        animationAsset = 'assets/animations/finance.json'; 
        break;
      case 1:
        title = 'Create or Join Groups';
        description = 'Connect with others, form groups, and manage contributions together.';
        animationAsset = 'assets/animations/grouping.json';
        break;
      case 2:
        title = 'Track Contributions';
        description = 'Easily monitor and track all contributions within your groups.';
        animationAsset = 'assets/animations/tracking.json';
        break;
    }

    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: Lottie.asset(animationAsset, fit: BoxFit.contain), 
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              color: zbGreen,
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            description,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 16,
              fontFamily: 'Roboto',
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildPageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(
        3,
        (int index) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: _currentPage == index ? 24 : 8,
            height: 8,
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: _currentPage == index ? zbGreen : Colors.grey[300],
            ),
          );
        },
      ),
    );
  }

  Widget _buildGetStartedButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, AppRoutes.login),
        style: ElevatedButton.styleFrom(
          backgroundColor: zbGreen,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          minimumSize: const Size(double.infinity, 50),
          elevation: 10, 
          shadowColor: zbGreen.withOpacity(0.5), 
        ),
        child: const Text(
          'Get Started',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: 'Roboto',
          ),
        ),
      ),
    );
  }
}

