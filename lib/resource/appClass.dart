import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

enum ScreenType { mobile, tab, web }

class AppClass {

  static BuildContext? lastContext;
  ScrollController controller = ScrollController();

  //Curriculo
  static final curriculoDownloadURL =
      '''https://drive.google.com/file/d/13CTrJ_rCmr6_Vm8O6pcBBm7WVG-ciKQ9/view''';

  getMqWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  getMqHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  showSnackBar(String msg, {BuildContext? context}) {
    ScaffoldMessenger.of(context ?? lastContext!)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  ScreenType getScreenType(BuildContext context) {
    double scrWidth = getMqWidth(context);
    if (scrWidth > 915) {
      return ScreenType.web;
    } else if (scrWidth < 650) {
      return ScreenType.mobile;
    }
    return ScreenType.tab;
  }

  downloadResume(context) async {
    await launchUrl(Uri.parse(AppClass.curriculoDownloadURL));
  }

}
