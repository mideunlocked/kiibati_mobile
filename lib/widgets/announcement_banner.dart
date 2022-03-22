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
          return SizedBox(
            width: MediaQuery.of(context).size.width / 1.1,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (builder) {
                          return const CupertinoAlertDialog(
                            title: Text('Test'),
                            content: Text("Testing testing testing testing"),
                          );
                        });
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: <Widget>[
                        Image.network(
                          ImageUrls.first,
                          fit: BoxFit.cover,
                          // loadingBuilder: (context, child, loadingProgress) {
                          //   return const Center(
                          //     child: CircularProgressIndicator(),
                          //   );
                          // },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              AutoSizeText(
                                "Test",
                                style: GoogleFonts.fredokaOne(),
                              ),
                              const AutoSizeText('Testing Testing'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          );
        },
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
