import 'package:flutter/material.dart';
import 'package:mukando_app/core/constants/colors.dart';
import '../dashboard/history_tab.dart';
import '../dashboard/members_tab.dart';
import '../dashboard/settings_tab.dart';
import '../dashboard/overview_new.dart';
import '../../routes/app_routes.dart';

class NewGroupDashboard extends StatefulWidget {
  @override
  _NewGroupDashboardState createState() => _NewGroupDashboardState();
}

class _NewGroupDashboardState extends State<NewGroupDashboard> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: zbGreen,
        title: Text(
          'Group Dashboard',
          style: TextStyle(color: Colors.white),
        ),
         centerTitle: true,
  actions: [
    IconButton(
      icon: Icon(Icons.logout, color: Colors.white),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Confirm Logout'),
            content: Text('Are you sure you want to log out?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Cancel'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: zbGreen),
                onPressed: () {
                  Navigator.pop(context); 
                  Navigator.popUntil(context, (route) => route.isFirst); 
                },
                child: Text('Logout'),
              ),
            ],
          ),
        );
      },
    )
  ],
),
      
      
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        // Add FAB
        onPressed: () => Navigator.pushNamed(context, AppRoutes.chatbot),
        backgroundColor: zbGreen,
        foregroundColor: Colors.white,
        tooltip: 'Add Contribution', // Add a tooltip for accessibility
        child: const Icon(Icons.chat_bubble_outline),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .endFloat, // Position at the bottom right 
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBody() {
     switch (_selectedIndex) {
      case 0:
        return NewOverviewScreen(); 
      case 1:
        return MembersScreen();
      case 2:
        return HistoryScreen();
      case 3:
        return SettingsScreen();
      default:
        return NewOverviewScreen();
    }
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),  
            label: 'Overview',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: 'Members',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_outlined),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: zbGreen,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
        showSelectedLabels: true, 
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500), 
      ),
    );
  }
}

