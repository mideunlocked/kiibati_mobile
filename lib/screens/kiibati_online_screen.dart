import 'package:flutter/material.dart';

import '/models/sermon_list_item.dart';
import 'kiibati_audio.dart';

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
      length: 2,
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
              )
            ],
          ),
        ),
        body: const SafeArea(
          child: TabBarView(
            children: <Widget>[
              KibatiiOnlineVideoScreen(),
              KibatiiOnlineAudioScreen(),
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
