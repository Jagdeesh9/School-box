import 'package:flutter/material.dart';
import 'package:school_box/pages/main/Account.dart';
import 'package:school_box/pages/main/Help.dart';
import 'package:school_box/pages/main/Home_page.dart';
import 'package:school_box/pages/main/Subscription.dart';
import 'package:provider/provider.dart';
import 'package:school_box/background_color_provider.dart';

class Bottomnavi extends StatefulWidget {
  const Bottomnavi({super.key});

  @override
  State<Bottomnavi> createState() => _BottomnaviState();
}

class _BottomnaviState extends State<Bottomnavi> {
  int _currentIndex = 0;

  // List of screens for each BottomNavigationBar item
  final List<Widget> _screens = [
    const HomePage(),
    const Subscription(),
    const Help(),
    const Account()
  ];

  @override
  Widget build(BuildContext context) {
    final backgroundColorProvider =
        Provider.of<BackgroundColorProvider>(context);
          final lightBackgroundColor = Colors.white;
    final darkBackgroundColor = Colors.black;
    final lightTextColor = Colors.black;
    final darkTextColor = Colors.white;


    return Scaffold(
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: backgroundColorProvider.isdarkmodechecked
                ? darkBackgroundColor
                : lightBackgroundColor, 
          ),

          
          child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          // backgroundColor: Colors.red,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          iconSize: 35,
          selectedFontSize: 15,
          unselectedFontSize: 18,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(
                Icons.home,
                // size: 30,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.view_list_rounded),
              label: 'My Subscriptions',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.help_outline),
              label: 'Help Desk',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.account_circle_outlined),
              label: 'Account',
            ),
          ],
        ),
      )),
      body: _screens[_currentIndex],
    );
  }
}
