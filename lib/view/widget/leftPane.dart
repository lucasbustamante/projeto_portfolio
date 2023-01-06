import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../controller/generalController.dart';
import '../../resource/appClass.dart';
import '../../resource/colors.dart';

class LeftPane extends ConsumerStatefulWidget {
  const LeftPane({Key? key}) : super(key: key);

  @override
  ConsumerState<LeftPane> createState() => _LeftPaneState();
}

class _LeftPaneState extends ConsumerState<LeftPane> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Column(
          children: [
            Expanded(
                flex: 5,
                child: Container(
                  child: Consumer(builder: (context, ref, child) {
                    String val = ref.watch(hoverProvider);
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
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
                                    width: 25),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
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
                                    width: 25),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
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
                                    width: 25),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
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
                                    width: 25),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                )),
            Expanded(
                child: Container(
              width: 1,
              color: textColor,
            ))
          ],
        ));
  }
}
