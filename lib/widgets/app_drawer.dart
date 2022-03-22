import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              height: 60,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 100,
              child: Center(
                child: Text(
                  'bishop image',
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.monitor),
              title: const Text('kiibati Online'),
              onTap: () {
                Navigator.of(context).pushNamed('KiibatiOnlineScreen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
