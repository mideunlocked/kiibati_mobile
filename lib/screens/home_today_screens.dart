import 'package:flutter/material.dart';

class HomeTodayScreen extends StatelessWidget {
  static const routeName = "HomeTodayScreen";

  const HomeTodayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("To be integraed"),
      ),
    );
  }
}
