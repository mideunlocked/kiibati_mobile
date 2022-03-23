import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class SermonVideo extends StatefulWidget {
  static const routeName = 'SermonVideo';

  const SermonVideo({Key? key}) : super(key: key);

  @override
  _SermonVideoState createState() => _SermonVideoState();
}

class _SermonVideoState extends State<SermonVideo> {
  VideoPlayerController? _controller;
  List kehinde = [
    'https://firebasestorage.googleapis.com/v0/b/kiibati-go.appspot.com/o/30da31d73e214e9b93e89a00e9bf86b4.mp4?alt=media&token=61f236e5-a842-4f9b-bdff-c085fbc6925c',
  ];

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://firebasestorage.googleapis.com/v0/b/kiibati-go.appspot.com/o/2021-10-03%2011-23-09.mp4?alt=media&token=0d11feb9-e70c-4c28-96c7-9f7963c08452',
    )
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => _controller!.play());
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  Future _hideStatusBar() =>
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   elevation: 0,
      // ),
      body: OrientationBuilder(
        builder: (ctx, orientation) {
          if (orientation == Orientation.portrait) {
            return Center(
              child: GestureDetector(
                onTap: () {
                  _hideStatusBar();
                  _controller!.value.isPlaying
                      ? _controller!.pause()
                      : _controller!.play();
                },
                child: SizedBox(
                  height: 200,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      VideoPlayer(
                        _controller!,
                      ),
                      _controller!.value.isPlaying
                          ? Container()
                          : const Center(
                              child: CircleAvatar(
                                backgroundColor: Colors.black54,
                                maxRadius: 30,
                                child: Center(
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                ),
                              ),
                            ),
                      if (_controller != null &&
                          _controller!.value.isInitialized)
                        VideoProgressIndicator(
                          _controller!,
                          colors: VideoProgressColors(
                            playedColor: Theme.of(context).primaryColor,
                          ),
                          allowScrubbing: true,
                        ),
                      if (_controller != null &&
                          _controller!.value.isInitialized &&
                          _controller!.value.isBuffering == true)
                        const Center(
                          child: CircularProgressIndicator(),
                        ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return GestureDetector(
              onTap: () {
                _hideStatusBar();
                _controller!.value.isPlaying
                    ? _controller!.pause()
                    : _controller!.play();
              },
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    VideoPlayer(
                      _controller!,
                    ),
                    _controller!.value.isPlaying
                        ? Container()
                        : const Center(
                            child: CircleAvatar(
                              backgroundColor: Colors.black54,
                              maxRadius: 30,
                              child: Center(
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                            ),
                          ),
                    if (_controller != null && _controller!.value.isInitialized)
                      VideoProgressIndicator(
                        _controller!,
                        colors: VideoProgressColors(
                          playedColor: Theme.of(context).primaryColor,
                        ),
                        allowScrubbing: true,
                      ),
                    if (_controller != null &&
                        _controller!.value.isInitialized &&
                        _controller!.value.isBuffering == true)
                      const Center(
                        child: CircularProgressIndicator(),
                      ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
