import 'package:flutter/material.dart';
import 'package:kiibati_mobile/screens/empty_screen.dart';
import 'package:kiibati_mobile/screens/kiibati_online_screen.dart';

import 'screens/Home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = [
    HomePageScreen(),
    KiibatiOnlineScreen(),
    EmptyScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pushNamed('EmptyScreen'),
            icon: const Icon(
              Icons.account_circle_rounded,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_max),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.online_prediction),
            label: 'Online',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
