import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/resource/appClass.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../resource/colors.dart';
import '../../resource/strings.dart';

class ContactTab extends StatefulWidget {
  const ContactTab({Key? key}) : super(key: key);

  @override
  State<ContactTab> createState() => _ContactTabState();
}

class _ContactTabState extends State<ContactTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppClass().getMqHeight(context) - 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(Strings.contactQuest,
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 16,
                    fontFamily: 'sfmono'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(Strings.contact,
                  style: GoogleFonts.robotoSlab(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    fontSize: 45,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  width: AppClass().getMqWidth(context) * 0.45,
                  child: Text(
                    Strings.contactInfo,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      color: textLight,
                      letterSpacing: 1,
                      height: 1.5,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, bottom: 70),
                child: InkWell(
                  onTap: () async {
                    await launchUrl(
                        Uri.parse(Strings.mailtoEmail));
                  },
                  child: Container(
                    height: AppClass().getMqHeight(context) * 0.09,
                    width: AppClass().getMqWidth(context) * 0.15,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(3.0)),
                        border: Border.all(
                            color: primaryColor, width: 1.5)),
                    child: Center(
                      child: Text(
                      Strings.buttonEmail,
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
                child: Text(
                  Strings.name,
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
