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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              InkWell(
                onTap: () => Navigator.of(context).pushNamed('EditProfile'),
                borderRadius: BorderRadius.circular(15),
                child: const SettingScreenButton(
                  title: "Edit profile",
                ),
              ),
              InkWell(
                onTap: () => Navigator.of(context).pushNamed('ChangePassword'),
                borderRadius: BorderRadius.circular(15),
                child: const SettingScreenButton(
                  title: "Change password",
                ),
              ),
              const SettingScreenButton(
                title: "Pay offerring",
              ),
              const SizedBox(
                height: 30,
              ),
              const SettingTitleWidget(
                title: "More",
                icon: Icons.assistant_navigation,
              ),
              InkWell(
                onTap: () => Navigator.of(context).pushNamed("AboutUsScreen"),
                borderRadius: BorderRadius.circular(15),
                splashColor: Theme.of(context).primaryColor,
                child: const SettingScreenButton(
                  title: "About us",
                ),
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[100],
        ),
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
      ),
    );
  }
}
