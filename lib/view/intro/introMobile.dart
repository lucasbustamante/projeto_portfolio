import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../../resource/appClass.dart';
import '../../resource/colors.dart';
import '../../resource/strings.dart';

class IntroMobile extends StatefulWidget {
  final AutoScrollController aScrollController;

  IntroMobile(this.aScrollController, {Key? key}) : super(key: key);

  @override
  State<IntroMobile> createState() => _IntroMobileState();
}

class _IntroMobileState extends State<IntroMobile> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.welcomeTxt,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                    fontSize: 16,
                    fontFamily: 'sfmono'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  Strings.name,
                  style: GoogleFonts.robotoSlab(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    fontSize: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  Strings.whatIdo,
                  style: GoogleFonts.robotoSlab(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    fontSize: 19,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Container(
                  width: AppClass().getMqWidth(context) * 0.8,
                  child: RichText(
                      text: TextSpan(
                          text: Strings.introAbout,
                          style: GoogleFonts.roboto(
                            color: textLight,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 15,
                          ),
                          children: <TextSpan>[
                        TextSpan(
                          text: Strings.variantName,
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 17,
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
