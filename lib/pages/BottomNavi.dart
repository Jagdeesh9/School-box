import 'package:flutter/material.dart';
import 'package:school_box/pages/main/Account.dart';
import 'package:school_box/pages/main/Help.dart';
import 'package:school_box/pages/main/Home_page.dart';
import 'package:school_box/pages/main/Subscription.dart';

class Bottomnavi extends StatefulWidget {
  const Bottomnavi({super.key});

  @override
  State<Bottomnavi> createState() => _BottomnaviState();
}

class _BottomnaviState extends State<Bottomnavi> {
  int _currentIndex = 2;

  // List of screens for each BottomNavigationBar item
  final List<Widget> _screens = [
    const HomePage(),
    const Subscription(),
    const Help(),
    const Account()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        iconSize: 25,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          _buildBottomNavItem(Icons.home, "Home", 0),
          _buildBottomNavItem(Icons.view_list_rounded, "My Subscriptions", 1),
          _buildBottomNavItem(Icons.help_outline, "Help Desk", 2),
          _buildBottomNavItem(Icons.account_circle_outlined, "Account", 3),
        ],
      ),
      body: _screens[_currentIndex],
    );
  }

  // Helper function to build BottomNavigationBarItem with white box for selected icon
  BottomNavigationBarItem _buildBottomNavItem(
      IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Container(
        decoration: BoxDecoration(
          color: _currentIndex == index ? Colors.white : Colors.transparent,
          shape: BoxShape.circle,
        ),
        padding: const EdgeInsets.all(5), // Add padding for the white box
        child: Icon(icon,
            color: _currentIndex == index ? Colors.red : Colors.black),
      ),
      label: label,
    );
  }
}
