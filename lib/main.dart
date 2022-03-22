import 'package:flutter/material.dart';

import 'home_page.dart';
import 'models/sermon_video.dart';
import 'screens/empty_screen.dart';
import 'screens/kiibati_online_screen.dart';

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
      ),
      home: const HomePage(),
      routes: {
        EmptyScreen.routeName: (ctx) => const EmptyScreen(),
        KiibatiOnlineScreen.routeName: (ctx) => const KiibatiOnlineScreen(),
        SermonVideo.routeName: (ctx) => const SermonVideo(),
      },
    );
  }
}
