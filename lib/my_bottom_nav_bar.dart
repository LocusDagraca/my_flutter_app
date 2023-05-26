import 'package:flutter/material.dart';
import 'welcome_setup_page.dart';
import 'scroll_stopper_page.dart';
import 'user_settings_page.dart';
import 'user_data_page.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const WelcomeSetupPage(),
    const ScrollStopperPage(),
    const UserSettingsPage(),
    const UserDataPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: Theme.of(context).colorScheme.primary, // change this to your desired color for the active icon

        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Welcome',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stop),
            label: 'Scroll Stopper',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'Stats',
          )
        ],
      ),
    );
  }
}
