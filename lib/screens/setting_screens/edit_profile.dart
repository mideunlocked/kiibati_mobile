import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  static const routeName = "EditProfile";

  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "Edit profile screen",
        ),
      ),
    );
  }
}
