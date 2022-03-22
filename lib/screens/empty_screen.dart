import 'package:flutter/material.dart';

class EmptyScreen extends StatefulWidget {
  static const routeName = 'EmptyScreen';

  const EmptyScreen({Key? key}) : super(key: key);

  @override
  State<EmptyScreen> createState() => _EmptyScreenState();
}

class _EmptyScreenState extends State<EmptyScreen> {
  String audioAddress =
      'http://cdn.mos.musicradar.com/audio/samples/hip-hop-demo-loops/BeatK01%2085-01.mp3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.settings_rounded,
        ),
      ),
    );
  }
}
