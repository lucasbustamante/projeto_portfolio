import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/resource/appClass.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../resource/colors.dart';
import '../../resource/strings.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({Key? key}) : super(key: key);

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(Strings.contactQuest,
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 18,
                    fontFamily: 'sfmono'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  Strings.contact,
                  style: GoogleFonts.robotoSlab(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    fontSize: 55,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 35),
                child: Container(
                  width: AppClass().getMqWidth(context) * 0.45,
                  child: Text(
                    Strings.contactInfo,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      color: textLight,
                      letterSpacing: 1,
                      height: 1.5,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 50, bottom: 150
                ),
                child: InkWell(
                  onTap: () async {
                    await launchUrl(
                        Uri.parse(Strings.mailtoEmail));
                  },
                  child: Container(
                    height: 70,
                    width: 170,
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

            ],
          ),
          Column(
            children: [
              Text(Strings.powered,
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
