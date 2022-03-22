import 'package:flutter/material.dart';

import '/models/sermon_list_item.dart';

class KiibatiOnlineScreen extends StatefulWidget {
  static const routeName = 'KiibatiOnlineScreen';

  const KiibatiOnlineScreen({Key? key}) : super(key: key);

  @override
  _KiibatiOnlineScreenState createState() => _KiibatiOnlineScreenState();
}

class _KiibatiOnlineScreenState extends State<KiibatiOnlineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Kiibati Online',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return const SermonListItem();
        },
      ),
    );
  }
}
