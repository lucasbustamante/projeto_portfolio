import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/resource/appClass.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../controller/generalController.dart';
import '../../resource/colors.dart';
import '../../resource/strings.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({Key? key}) : super(key: key);

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {

  @override
  Widget build(BuildContext context) {

    double fontSize = MediaQuery.of(context).size.width;

    return Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(Strings.contactQuest,
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 14,
                    fontFamily: 'sfmono'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(Strings.contact,
                  style: GoogleFonts.robotoSlab(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    fontSize: fontSize*0.10,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  width: AppClass().getMqWidth(context) * 0.55,
                  child: Text(
                    Strings.contactInfo,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      color: textLight,
                      letterSpacing: 1,
                      height: 1.5,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, bottom: 50),
                child: InkWell(
                  onTap: () async {
                    await launchUrl(
                        Uri.parse(Strings.mailtoEmail));
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
                      child: Text(Strings.buttonEmail,
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 13,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'sfmono')),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Consumer(builder: (context, ref, child) {
                    String val = ref.watch(hoverProvider);
                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: AppClass().getMqHeight(context) * 0.07,
                          child: InkWell(
                            onTap: () async {
                              await launchUrl(
                                  Uri.parse("https://github.com/LucasBustamante"));
                            },
                            onHover: (bol) {
                              if (bol) {
                                ref.read(hoverProvider.notifier).state =
                                "git";
                              } else {
                                ref.read(hoverProvider.notifier).state = "";
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  bottom: val == "git" ? 5.0 : 0),
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: SvgPicture.asset('assets/svg/github.svg',
                                  color: val == "git"
                                      ? primaryColor
                                      : textColor,
                                  width: 35),
                            ),
                          ),
                        ),
                        Container(
                          height: AppClass().getMqHeight(context) * 0.07,
                          child: InkWell(
                            onTap: () async {
                              await launchUrl(
                                  Uri.parse("https://www.instagram.com/lucasbustamante_/"));
                            },
                            onHover: (bol) {
                              if (bol) {
                                ref.read(hoverProvider.notifier).state =
                                "instagram";
                              } else {
                                ref.read(hoverProvider.notifier).state = "";
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  bottom: val == "instagram" ? 5.0 : 0),
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: SvgPicture.asset(
                                  'assets/svg/instagram.svg',
                                  color: val == "instagram"
                                      ? primaryColor
                                      : textColor,
                                  width: 35),
                            ),
                          ),
                        ),
                        Container(
                          child: InkWell(
                            onTap: () async {
                              await launchUrl(Uri.parse(
                                  "https://www.linkedin.com/in/lucas-bustamante-b9612476/"));
                            },
                            onHover: (bol) {
                              if (bol) {
                                ref.read(hoverProvider.notifier).state =
                                "linkedIn";
                              } else {
                                ref.read(hoverProvider.notifier).state = "";
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  bottom: val == "linkedIn" ? 5.0 : 0),
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: SvgPicture.asset(
                                  'assets/svg/linkedIn.svg',
                                  color: val == "linkedIn"
                                      ? primaryColor
                                      : textColor,
                                  width: 35),
                            ),
                          ),
                        ),
                        Container(
                          height: AppClass().getMqHeight(context) * 0.07,
                          child: InkWell(
                            onTap: () async {
                              await launchUrl(Uri.parse(
                                  "https://api.whatsapp.com/send?phone=5511980263200&text=Ol%C3%A1%2C+Lucas."));
                            },
                            onHover: (bol) {
                              if (bol) {
                                ref.read(hoverProvider.notifier).state =
                                "whatsapp";
                              } else {
                                ref.read(hoverProvider.notifier).state = "";
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  bottom: val == "whatsapp" ? 5.0 : 0),
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: SvgPicture.asset(
                                  'assets/svg/whatsapp.svg',
                                  color: val == "whatsapp"
                                      ? primaryColor
                                      : textColor,
                                  width: 35),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              )
            ],
          ),
          SizedBox(height: 120),
          Column(
            children: [
              Text(
                Strings.powered,
                style: TextStyle(
                    color: textColor,
                    fontSize: 12,
                    fontFamily: 'sfmono'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(Strings.name,
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 12,
                      fontFamily: 'sfmono'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
