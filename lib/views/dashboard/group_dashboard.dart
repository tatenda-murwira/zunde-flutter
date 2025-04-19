import 'package:flutter/material.dart';
//import '../../routes/app_routes.dart';
import '../dashboard/history_tab.dart';
import '../dashboard/members_tab.dart';
import '../dashboard/overview_tab.dart';
import '../dashboard/settings_tab.dart';

class GroupDashboard extends StatefulWidget {
  @override
  _GroupDashboardState createState() => _GroupDashboardState();
}

class _GroupDashboardState extends State<GroupDashboard> {
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
        backgroundColor: const Color(0xFF1B5E20),
        title: Text(
          'Group Dashboard',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: _buildBody(), 
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBody() {
     switch (_selectedIndex) {
      case 0:
        return OverviewScreen(); 
      case 1:
        return MembersScreen();
      case 2:
        return HistoryScreen();
      case 3:
        return SettingsScreen();
      default:
        return OverviewScreen();
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
        selectedItemColor: const Color(0xFF1B5E20),
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

