import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:kiibati_mobile/screens/empty_screen.dart';
import 'package:kiibati_mobile/screens/kiibati_online_screen.dart';

import 'widgets/app_drawer.dart';
import 'widgets/announcement_banner.dart';
import 'widgets/home_today.dart';

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
            onPressed: () {},
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
      drawer: const AppDrawer(),
    );
  }
}

class HomePageScreen extends StatelessWidget {
  static const routeName = "HomePageScreen";

  const HomePageScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: AutoSizeText(
                'Announcments',
                style: GoogleFonts.openSans(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: const Text(
                'Find out all about recent announcements and upcoming events',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const AnnouncementBanner(),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              title: AutoSizeText(
                'Church Today',
                style: GoogleFonts.openSans(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: const Text(
                'Get to connect with God at the Power Penetcostal Church on the go app.',
                style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const HomeTodayWidget(),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
