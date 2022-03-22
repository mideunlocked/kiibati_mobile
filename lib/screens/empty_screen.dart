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
      appBar: AppBar(),
      // body: Container(
      //   height: MediaQuery.of(context).size.height,
      //   width: MediaQuery.of(context).size.width,
      //   decoration: const BoxDecoration(
      //     image: DecorationImage(
      //       image: NetworkImage(
      //         'https://www.wallpapertip.com/wmimgs/5-59061_sunset-by-the-beach.jpg',
      //       ),
      //       fit: BoxFit.cover,
      //     ),
      //   ),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: <Widget>[
      //       const Padding(
      //         padding: EdgeInsets.only(top: 20.0),
      //         child: BackButton(
      //           color: Colors.white,
      //         ),
      //       ),
      //       const Spacer(),
      //       Center(
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           children: <Widget>[
      //             Title(
      //               color: Colors.white,
      //               child: const Text(
      //                 'The testing tester',
      //                 style: TextStyle(
      //                   color: Colors.white,
      //                   fontWeight: FontWeight.w500,
      //                   fontSize: 30,
      //                 ),
      //               ),
      //             ),
      //             const Text(
      //               'Test Tester',
      //               style: TextStyle(
      //                 color: Colors.white,
      //                 fontWeight: FontWeight.w400,
      //                 fontSize: 20,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
