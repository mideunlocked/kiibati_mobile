import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KiibatiOutline extends StatelessWidget {
  static const routeName = "KiibatiOutline";

  const KiibatiOutline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String title = "Title";
    const String scriptReference = "Scripture reference";
    const Widget spacing = SizedBox(height: 15);

    final args = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          args["Argument"],
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AutoSizeText(
                  "Introduction",
                  style: GoogleFonts.roboto(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                spacing,
                AutoSizeText(
                  "$title: God Speaks An Unchanging Message",
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                spacing,
                AutoSizeText(
                  "$scriptReference: Luke 24:27",
                  style: GoogleFonts.roboto(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                spacing,
                AutoSizeText(
                  """
Connection to Unit Theme: God speaks. He did not have to speak, but He has. In all that He has spoken, His single message is His plan of redemption which finds its culmination in Christ.

Introduction Idea
Has someone told you something, only to come back later and change his story? In thinking about this question, some people's minds may immediately go to politicians. You have heard the joke, "How do you know when a politician is lying? His lips are moving." Obviously, this does not characterize all, or perhaps even most, politicians. The statement alleges, however, that politicians will change their message when speaking to particular groups to accomplish certain goals.

By contrast, when God speaks He has only one message, which is applicable to all people at all times. As One whose very character and nature is holiness and truth, God cannot lie. As the sovereign creator and God over all things, there is no one to whom His message does not apply. Whether speaking through the world He has made, through His written Word, or through the incarnate Word – the Lord Jesus Christ – God's message is clear. He has made mankind for relationship with Himself, that we might know, love, serve and glorify Him. Though our sin separates us from God, His plan from the beginning was to reconcile to Himself those who would place their faith in God's provision for redemption – Jesus Christ.

I – God has revealed Himself from the beginning (v.27a)
Since the beginning of the world, God has spoken to man. Though God speaks through creation itself, He did not simply create the world and then hide, leaving man to figure out the world and his place in it. Rather, from the beginning, God took the initiative to reveal Himself, His ways, and His purposes to man. He spoke to Adam as he walked and lived in the garden. He spoke to Moses from the burning bush and later, according to Exodus 33:11, face-to-face. God spoke to the prophets, by His Spirit, commanding them to write down His words so that they might  pass to future generations (2 Pe. 1:20-21). God spoke to them in various ways at various times (Heb. 1:1). The thing we must remember in all of this, however, is that God is the One who took the initiative. His words are what He communicates to man (2 Tim. 3:16).

We should note in today's passage that Jesus is acknowledging "Moses and the Prophets" (the Law and the Prophets) as God's authoritative revelation. Do not overlook, however, both the fact that God has taken the initiative to reveal Himself to man, and that from the beginning God's message to man has pointed toward a single goal, as we will see in the latter part of this verse.

Application: Have you taken time to consider that the God of all creation has taken the initiative to speak to man to reveal Himself, His character, His ways, and His plan? We know that the Bible is God's divine revelation of Himself to us. Because God does not change, His word has not changed, nor will it change. The question is: Does the way you value, read, memorize, and meditate upon the Word of God demonstrate that you recognize this incredible reality?

II – God's revelation has always pointed to Christ (v.27b)
God's revelation of His redemptive plan began small - a promised seed that would come from the woman (Gen. 3:15). Over time, that revelation unfolded and become clearer. The promise would come through Abraham, then Isaac, then Jacob, then Judah, then David, etc. To read 2 Kings and see the miserable failure of all those "sons of David," one could certainly wonder how God's promise would be fulfilled, but it was not yet fully revealed. Even at the end of the Old Testament, the readers of Jesus' day were looking, hoping, longing for that one who would come to deliver Israel, God's people. When would the one come who would fulfill the promise to Abraham and bring God's blessing not only to the Jews, but to all people?

The disciples who walked along the Emmaus Road with Jesus knew God had promised a Messiah who would "redeem Israel" (v. 21). They were hoping Jesus was that Messiah, yet it seemed their hope was lost. It is here that Jesus, far from giving them some new or different revelation, showed them the fulfillment of what God had spoken from the beginning. The text says Jesus began with Moses and the prophets and "interpreted" (Gr. Διερμήνευσεν) for them how all the Scriptures pointed to Him. Paul uses this same word in 1 Corinthians for the interpreting of languages. Jesus showed these followers (and us) that God had been speaking from the beginning about His plan to redeem lost man to Himself through Christ. Now, through Christ, that plan was coming to pass.

Application: God has no "Plan B." His plan from the beginning has been to redeem to Himself those who would trust in Christ as the only means of salvation, through repentance and faith. For some, their need is to acknowledge their own sin and Christ as the only Savior, bowing their hearts before Him in repentance, faith, and surrender. For those who have trusted Christ, however, our responsibility is to speak to others that which God has spoken from the beginning. We do not need a new message. We must speak boldly and clearly the message of reconciliation with God through Christ. This is both the message and mission we have been given (2 Cor. 5:18-20).

Conclusion Idea
God is a God who speaks, a God who reveals Himself, His character, His purpose, and His plan. From the beginning, that which He has spoken has been clear and consistent – He will provide for lost man a sinless redeemer that will reconcile God and man. He has done this in Christ. In the weeks to come, we will see not only that God speaks, but how He has spoken and how all that He has spoken points us to Christ.
""",
                  style: GoogleFonts.roboto(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
