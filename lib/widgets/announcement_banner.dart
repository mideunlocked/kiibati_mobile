import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnnouncementBanner extends StatefulWidget {
  const AnnouncementBanner({Key? key}) : super(key: key);

  @override
  _AnnouncementBannerState createState() => _AnnouncementBannerState();
}

class _AnnouncementBannerState extends State<AnnouncementBanner> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (ctx, index) {
          return const AnnouncementTile(
            body:
                "This Friday 25th of March is our monthly night of God's throne",
            title: "Night of God's Throne",
          );
        },
      ),
    );
  }
}

class AnnouncementTile extends StatelessWidget {
  final String title;
  final String body;

  const AnnouncementTile({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 200,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: InkWell(
          onTap: () {
            showDialog(
                context: context,
                builder: (builder) {
                  return CupertinoAlertDialog(
                    title: Text(title),
                    content: Text(body),
                  );
                });
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(
                  ImageUrls.first,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Title(
                  color: Colors.white,
                  child: AutoSizeText(
                    title,
                    style: GoogleFonts.openSans(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                AutoSizeText(
                  body,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: constant_identifier_names
const ImageUrls = [
  "https://firebasestorage.googleapis.com/v0/b/kiibati-go.appspot.com/o/church%20today%2F4.png?alt=media&token=8ca23cc0-c59a-4086-9ce1-fde9127a3e47",
  "https://firebasestorage.googleapis.com/v0/b/kiibati-go.appspot.com/o/church%20today%2F5.png?alt=media&token=398f2057-9d7e-4d77-9f7e-d7e1d778d121",
  "https://firebasestorage.googleapis.com/v0/b/kiibati-go.appspot.com/o/church%20today%2F6.png?alt=media&token=707aebd9-9760-4099-9c6f-5a2e08a7573a",
];
