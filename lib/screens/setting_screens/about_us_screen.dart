import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  static const routeName = "AboutUsScreen";

  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          "About Us screen",
        ),
      ),
    );
  }
}
