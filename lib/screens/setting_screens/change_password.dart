import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  static const routeName = "ChangePassword";

  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          "Change password screen",
        ),
      ),
    );
  }
}
