import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/generalController.dart';
import 'package:portfolio/resource/appClass.dart';
import 'package:portfolio/resource/colors.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class ActionBar extends ConsumerStatefulWidget with PreferredSizeWidget {
  final AutoScrollController controller;

  ActionBar(this.controller, {Key? key}) : super(key: key);

  @override
  ConsumerState<ActionBar> createState() => _ActionBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ActionBarState extends ConsumerState<ActionBar> {

  String item1 = 'Sobre';
  String item2 = 'Projetos';
  String item3 = 'Contato';
  String item4 = 'Curriculo';


  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        padding: EdgeInsets.only(right: 55.0, top: 33.0),
        child: () {
          ScreenType scrType = AppClass().getScreenType(context);
          if (scrType == ScreenType.mobile || scrType == ScreenType.tab) {
            return Row(
              children: [
                Expanded(
                  flex: 9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      PopupMenuButton(
                        color: primaryColor,
                        itemBuilder: (c) => <PopupMenuEntry>[
                          PopupMenuItem(
                            child: Container(
                                width: 90.0,
                                child: InkWell(
                                  onTap: () => widget.controller.scrollToIndex(
                                      1,
                                      preferPosition: AutoScrollPosition.begin),
                                  child: Row(
                                    children: [
                                      Icon(Icons.account_circle_rounded,
                                          size: 18,
                                          color: textLight2),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          item1,
                                          style: GoogleFonts.roboto(
                                            color: textLight2
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                          PopupMenuItem(
                            child: InkWell(
                              onTap: () => widget.controller.scrollToIndex(2,
                                  preferPosition: AutoScrollPosition.begin),
                              child: Row(
                                children: [
                                  Icon(Icons.computer_rounded, size: 18,
                                      color: textLight2),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      item2,
                                      style: GoogleFonts.roboto(
                                            color: textLight2
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            child: InkWell(
                              onTap: () => widget.controller.scrollToIndex(3,
                                  preferPosition: AutoScrollPosition.begin),
                              child: Row(
                                children: [
                                  Icon(Icons.email_outlined, size: 18,
                                  color: textLight2),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      item3,
                                      style: GoogleFonts.roboto(
                                            color: textLight2
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            child: InkWell(
                              onTap: (){
          AppClass().downloadResume(context);
          },
                              child: Row(
                                children: [
                                  Icon(Icons.contact_page_outlined, size: 18,
                                      color: textLight2),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      item4,
                                      style: GoogleFonts.roboto(
                                            color: textLight2
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                        child: Icon(Icons.menu_rounded, size: 25),
                      )
                    ],
                  ),
                ),
              ],
            );
          }
          return Row(
            children: [
              Expanded(
                flex: 9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        widget.controller.scrollToIndex(1,
                            preferPosition: AutoScrollPosition.begin);
                      },
                      onHover: (bol) {
                        if (bol) {
                          ref.read(hoverProvider.notifier).state = item1;
                        } else {
                          ref.read(hoverProvider.notifier).state = "";
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Consumer(builder: (context, ref, child) {
                          String state = ref.watch(hoverProvider);
                          bool isHovered = (state == item1);
                          return Text(item1,
                              style: TextStyle(
                                  color: isHovered
                                      ? primaryColor
                                      : textColor,
                                  fontSize: 16,
                                  fontFamily: 'sfmono'));
                        }),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        widget.controller.scrollToIndex(2,
                            preferPosition: AutoScrollPosition.begin);
                      },
                      onHover: (bol) {
                        if (bol) {
                          ref.read(hoverProvider.notifier).state = item2;
                        } else {
                          ref.read(hoverProvider.notifier).state = "";
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Consumer(builder: (context, ref, child) {
                          String state = ref.watch(hoverProvider);
                          bool isHovered = (state == item2);
                          return Text(item2,
                              style: TextStyle(
                                  color: isHovered
                                      ? primaryColor
                                      : textColor,
                                  fontSize: 16,
                                  fontFamily: 'sfmono'));
                        }),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        widget.controller.scrollToIndex(3,
                            preferPosition: AutoScrollPosition.begin);
                      },
                      onHover: (bol) {
                        if (bol) {
                          ref.read(hoverProvider.notifier).state = item3;
                        } else {
                          ref.read(hoverProvider.notifier).state = "";
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Consumer(builder: (context, ref, child) {
                          String state = ref.watch(hoverProvider);
                          bool isHovered = (state == item3);

                          return Text(item3,
                              style: TextStyle(
                                  color: isHovered
                                      ? primaryColor
                                      : textColor,
                                  fontSize: 16,
                                  fontFamily: 'sfmono'));
                        }),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        AppClass().downloadResume(context);
                      },
                      onHover: (bol) {
                        if (bol) {
                          ref.read(hoverProvider.notifier).state = item4;
                        } else {
                          ref.read(hoverProvider.notifier).state = "";
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Consumer(builder: (context, ref, child) {
                          String state = ref.watch(hoverProvider);
                          bool isHovered = (state == item4);
                          return Text(item4,
                              style: TextStyle(
                                  color: isHovered
                                      ? primaryColor
                                      : textColor,
                                  fontSize: 16,
                                  fontFamily: 'sfmono'));
                        }),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          );
        }());
  }
}
