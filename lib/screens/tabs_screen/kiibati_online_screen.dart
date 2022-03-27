import 'package:flutter/material.dart';

import '/models/sermon_list_item.dart';
import 'kiibati_audio.dart';
import 'kiibati_audio.dart';
import 'kiibati_outline_screen.dart';

class KiibatiOnlineScreen extends StatefulWidget {
  static const routeName = 'KiibatiOnlineScreen';

  const KiibatiOnlineScreen({Key? key}) : super(key: key);

  @override
  _KiibatiOnlineScreenState createState() => _KiibatiOnlineScreenState();
}

class _KiibatiOnlineScreenState extends State<KiibatiOnlineScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          bottom: TabBar(
            labelColor: Theme.of(context).primaryColor,
            indicatorColor: Theme.of(context).primaryColor.withOpacity(0.5),
            tabs: const [
              Tab(
                text: "Video",
              ),
              Tab(
                text: "Audio",
              ),
              Tab(
                text: "Outlines",
              )
            ],
          ),
        ),
        body: const SafeArea(
          child: TabBarView(
            children: <Widget>[
              KibatiiOnlineVideoScreen(),
              KibatiiOnlineAudioScreen(),
              KiibatiOutline(),
            ],
          ),
        ),
      ),
    );
  }
}

class KibatiiOnlineVideoScreen extends StatelessWidget {
  const KibatiiOnlineVideoScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return const SermonListItem();
      },
    );
  }
}
