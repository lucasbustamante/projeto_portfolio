import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../resource/appClass.dart';
import '../../resource/colors.dart';
import '../../resource/strings.dart';
import 'package:flutter/cupertino.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: AppClass().getMqWidth(context) * 0.1,
          right: AppClass().getMqWidth(context) * 0.1),
      padding: EdgeInsets.only(bottom: 30),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 0.5,
                margin: EdgeInsets.only(right: 15),
                width: AppClass().getMqWidth(context) * 0.02,
                color: textLight,
              ),
              Text(Strings.about,
                style: GoogleFonts.robotoSlab(
                    color: primaryColor,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              Container(
                height: 0.5,
                margin: EdgeInsets.only(left: 15),
                width: AppClass().getMqWidth(context) * 0.2,
                color: textLight,
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Text(
                        Strings.aboutPart1,
                        style: GoogleFonts.roboto(
                          color: textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        Strings.aboutPart2,
                        style: GoogleFonts.roboto(
                          color: textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        Strings.aboutPart3,
                        style: GoogleFonts.roboto(
                          color: textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        Strings.aboutPart4,
                        style: GoogleFonts.roboto(
                          color: textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text(
                        Strings.techIntro,
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: GridView.count(
                        physics: BouncingScrollPhysics(),
                          crossAxisCount: 2,
                          shrinkWrap: true,
                          childAspectRatio: 5,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.arrow_right),
                                Text(Strings.tech,
                                    style: GoogleFonts.robotoFlex(
                                      color: textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 16,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.arrow_right),
                                Text(Strings.tech1,
                                    style: GoogleFonts.robotoFlex(
                                      color: textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 16,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.arrow_right),
                                Text(Strings.tech2,
                                    style: GoogleFonts.robotoFlex(
                                      color: textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 16,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.arrow_right),
                                Text(Strings.tech3,
                                    style: GoogleFonts.robotoFlex(
                                      color: textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 16,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.arrow_right),
                                Text(Strings.tech4,
                                    style: GoogleFonts.robotoFlex(
                                      color: textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 16,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.arrow_right),
                                Text(Strings.tech5,
                                    style: GoogleFonts.robotoFlex(
                                      color: textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 16,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.arrow_right),
                                Text(Strings.tech6,
                                    style: GoogleFonts.robotoFlex(
                                      color: textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 16,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.arrow_right),
                                Text(Strings.tech7,
                                    style: GoogleFonts.robotoFlex(
                                      color: textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 16,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.arrow_right),
                                Text(Strings.tech8,
                                    style: GoogleFonts.robotoFlex(
                                      color: textLight,
                                      letterSpacing: 1,
                                      height: 1.5,
                                      fontSize: 16,
                                    )),
                              ],
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
