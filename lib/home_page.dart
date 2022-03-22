import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'widgets/app_drawer.dart';
import 'widgets/announcement_banner.dart';
import 'widgets/home_today.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
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
      ),
      drawer: const AppDrawer(),
    );
  }
}
