import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingScreen extends StatelessWidget {
  static const routeName = "SettingScreen";

  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AutoSizeText(
                "Settings",
                style: GoogleFonts.roboto(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SettingTitleWidget(
                title: "Account",
                icon: Icons.person_outline_rounded,
              ),
              const SettingScreenButton(
                title: "Edit profile",
              ),
              const SettingScreenButton(
                title: "Cange password",
              ),
              const SizedBox(
                height: 20,
              ),
              const SettingTitleWidget(
                title: "More",
                icon: Icons.assistant_navigation,
              ),
              const SettingScreenButton(
                title: "About us",
              ),
              const SettingScreenButton(
                title: "Rate us",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingTitleWidget extends StatelessWidget {
  final String title;
  final IconData icon;

  const SettingTitleWidget({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          size: 25,
        ),
        const SizedBox(
          width: 5,
        ),
        AutoSizeText(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}

class SettingScreenButton extends StatelessWidget {
  final String title;

  const SettingScreenButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        children: <Widget>[
          AutoSizeText(
            title,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.black,
            size: 15,
          ),
        ],
      ),
    );
  }
}
