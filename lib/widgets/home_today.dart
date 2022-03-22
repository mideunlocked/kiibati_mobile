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
    return GridView.builder(
      itemCount: imageUrl.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemBuilder: (ctx, index) {
        return HomeTodayBox(
          imageUrl: imageUrl[index],
          title: "Testing",
          extra: "Testing testing",
        );
      },
    );
  }
}

class HomeTodayBox extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String extra;

  const HomeTodayBox({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.extra,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed('EmptyScreen'),
      child: SizedBox(
        width: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Image.network(
                imageUrl,
                width: double.infinity,
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
