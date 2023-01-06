import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/resource/strings.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../../resource/appClass.dart';
import '../../resource/colors.dart';

class IntroTab extends StatefulWidget {
  AutoScrollController aScrollController;

  IntroTab(this.aScrollController, {Key? key}) : super(key: key);

  @override
  State<IntroTab> createState() => _IntroTabState();
}

class _IntroTabState extends State<IntroTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: EdgeInsets.only(
          left: AppClass().getMqWidth(context) * 0.01,
          top: AppClass().getMqHeight(context) * 0.07),
      padding: EdgeInsets.only(bottom: 50),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  Strings.welcomeTxt,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                      fontSize: 16,
                      fontFamily: 'sfmono'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  Strings.name,
                  style: GoogleFonts.robotoSlab(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    fontSize: 45,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Text(
                  Strings.whatIdo,
                  style: GoogleFonts.robotoSlab(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    fontSize: 35,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  width: AppClass().getMqWidth(context) * 0.45,
                  child: RichText(
                      text: TextSpan(
                          text: Strings.introAbout,
                          style: GoogleFonts.roboto(
                            color: textLight,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                        TextSpan(
                          text: Strings.variantName,
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 18,
                          ),
                        )
                      ])),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: InkWell(
                  onTap: () {
                    widget.aScrollController.scrollToIndex(1,
                        preferPosition: AutoScrollPosition.begin);
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(3.0)),
                        border: Border.all(
                            color: primaryColor, width: 1.5)),
                    child: Center(
                      child: Text(Strings.buttonGo,
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 13,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'sfmono')),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
