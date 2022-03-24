import 'package:flutter/material.dart';

import 'home_page.dart';
import 'models/sermon_video.dart';
import 'screens/home_screen.dart';
import 'screens/empty_screen.dart';
import 'screens/home_today_screens.dart';
import 'screens/kiibati_online_screen.dart';
import 'screens/setting_screen.dart';
import 'screens/setting_screens/about_us_screen.dart';
import 'screens/setting_screens/change_password.dart';
import 'screens/setting_screens/edit_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kiibati',
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          primaryColor: Colors.indigo,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(1),
              backgroundColor: MaterialStateProperty.all(Colors.white),
              shadowColor: MaterialStateProperty.all(Colors.white70),
              maximumSize: MaterialStateProperty.all(
                Size.infinite,
              ),
            ),
          ),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
          )),
      home: const HomePage(),
      routes: {
        EmptyScreen.routeName: (ctx) => const EmptyScreen(),
        KiibatiOnlineScreen.routeName: (ctx) => const KiibatiOnlineScreen(),
        SermonVideo.routeName: (ctx) => const SermonVideo(),
        HomePageScreen.routeName: (ctx) => const HomePageScreen(),
        HomeTodayScreen.routeName: (ctx) => const HomeTodayScreen(),
        SettingScreen.routeName: (ctx) => const SettingScreen(),
        EditProfile.routeName: (ctx) => const EditProfile(),
        ChangePassword.routeName: (ctx) => const ChangePassword(),
        AboutUsScreen.routeName: (ctx) => const AboutUsScreen(),
      },
    );
  }
}
