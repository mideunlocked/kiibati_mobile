import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTodayWidget extends StatefulWidget {
  const HomeTodayWidget({Key? key}) : super(key: key);

  @override
  State<HomeTodayWidget> createState() => _HomeTodayidgetState();
}

class _HomeTodayidgetState extends State<HomeTodayWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        HomeTodayBox(
          imageUrl: imageUrl.elementAt(5),
          title: "This weeks highlights",
          extra: "Last week of March",
          pushNamed: "HomeTodayScreen",
        ),
        HomeTodayBox(
          imageUrl: imageUrl.first,
          title: "Watch the latest service",
          extra: "27th March, 2022",
          pushNamed: "SermonVideo",
        ),
        HomeTodayBox(
          imageUrl: imageUrl.elementAt(1),
          title: "Listen to the latetst service",
          extra: "28th March, 2022",
          pushNamed: "HomeTodayScreen",
        ),
        HomeTodayBox(
          imageUrl: imageUrl.elementAt(2),
          title: "Bible Study Outline",
          extra: "28th March, 2022",
          pushNamed: "KiibatiOutline",
        ),
        HomeTodayBox(
          imageUrl: imageUrl.elementAt(3),
          title: "Prayers",
          extra: "Variety of prayers prepared for you",
          pushNamed: "HomeTodayScreen",
        ),
        HomeTodayBox(
          imageUrl: imageUrl.elementAt(4),
          title: "Bible Study Outline",
          extra: "28th March, 2022",
          pushNamed: "HomeTodayScreen",
        ),
      ],
    );
  }
}

class HomeTodayBox extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String extra;
  final String pushNamed;

  const HomeTodayBox({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.extra,
    required this.pushNamed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(pushNamed, arguments: {
        "Argument": title,
      }),
      child: SizedBox(
        width: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: <Widget>[
              Image.network(
                imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15.0,
                  left: 15.0,
                  right: 5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    AutoSizeText(
                      title,
                      style: GoogleFonts.fredokaOne(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AutoSizeText(
                      extra,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const imageUrl = [
  "https://firebasestorage.googleapis.com/v0/b/kiibati-go.appspot.com/o/church%20today%2F1.png?alt=media&token=2cfee001-dd2c-4cbb-8937-f98d61e8b148",
  "https://firebasestorage.googleapis.com/v0/b/kiibati-go.appspot.com/o/church%20today%2F2.png?alt=media&token=c96143bb-77bf-45bd-973f-8f4b0dfa1746",
  'https://firebasestorage.googleapis.com/v0/b/kiibati-go.appspot.com/o/church%20today%2F3.png?alt=media&token=58614407-3b42-4da0-a89f-0523ae2b29df',
  "https://firebasestorage.googleapis.com/v0/b/kiibati-go.appspot.com/o/church%20today%2F4.png?alt=media&token=8ca23cc0-c59a-4086-9ce1-fde9127a3e47",
  "https://firebasestorage.googleapis.com/v0/b/kiibati-go.appspot.com/o/church%20today%2F5.png?alt=media&token=398f2057-9d7e-4d77-9f7e-d7e1d778d121",
  "https://firebasestorage.googleapis.com/v0/b/kiibati-go.appspot.com/o/church%20today%2F6.png?alt=media&token=707aebd9-9760-4099-9c6f-5a2e08a7573a",
];

class HomeToday {
  final String title;
  final String extra;

  HomeToday(this.extra, {required this.title});
}
