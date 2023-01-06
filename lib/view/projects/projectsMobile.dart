import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/resource/appClass.dart';
import '../../apps/Clone Nubank/screens/gif_animation.dart';
import '../../apps/Neumorphic_Calculator/view/home_page.dart';
import '../../apps/bmi/home_page.dart';
import '../../apps/smart badge/view/home_page.dart';
import '../../controller/generalController.dart';
import '../../model/projectModel.dart';
import '../../resource/colors.dart';
import '../../resource/strings.dart';

class ProjectsMobile extends StatefulWidget {
  const ProjectsMobile({Key? key}) : super(key: key);

  @override
  State<ProjectsMobile> createState() => _ProjectsMobileState();
}

class _ProjectsMobileState extends State<ProjectsMobile> {

  int dataPage = 1;

  @override
  Widget build(BuildContext context) {
    List<ProjectsModel> projectsList = [
      ProjectsModel(
          desig: Strings.project1,
          points: Column(
            children: [
              Text(Strings.info1,
                style: TextStyle(
                    height: 1.5,
                    fontSize: 11,
                    fontFamily: 'sfmono'),),
              Image.asset('assets/images/projectMobi1.png')
            ],
          )),
      ProjectsModel(
          desig: Strings.project2,
          points: Column(
            children: [
              Text(Strings.info2,
                style: TextStyle(
                    height: 1.5,
                    fontSize: 11,
                    fontFamily: 'sfmono'),),
              Image.asset('assets/images/projectMobi2.png')
            ],
          )),
      ProjectsModel(
          desig: Strings.project3,
          points: Column(
            children: [
              Text(Strings.info3,
                style: TextStyle(
                    height: 1.5,
                    fontSize: 11,
                    fontFamily: 'sfmono'),),
              Image.asset('assets/images/projectMobi3.png')
            ],
          )),
      ProjectsModel(
          desig: Strings.project4,
          points: Column(
            children: [
              Text(Strings.info4,
                style: TextStyle(
                    height: 1.5,
                    fontSize: 11,
                    fontFamily: 'sfmono'),),
              Image.asset('assets/images/projectMobi4.png')
            ],
          )),
    ];
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 0.5,
                margin: EdgeInsets.only(right: 15),
                width: AppClass().getMqWidth(context) * 0.02,
                color: textLight,
              ),
              Text(
                Strings.project,
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
          Consumer(builder: (context, ref, child) {
            var data = ref.watch(selectedExpProvider);
            return Container(
              width: AppClass().getMqWidth(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            dataPage = 1;
                            ref.read(selectedExpProvider.notifier).state = 0;
                          },
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: data == 0
                                    ? primaryColor
                                    : Colors.transparent,
                                border: Border(
                                    left: BorderSide(
                                        color: data == 0
                                            ? textColor
                                            : primaryColor,
                                        width: 2))),
                            child: Text(
                              Strings.project1,
                              style: TextStyle(
                                  color: data == 0
                                      ? textLight2
                                      : textLight,
                                  height: 1.5,
                                  fontSize: 11,
                                  fontFamily: 'sfmono'),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            dataPage = 2;
                            ref.read(selectedExpProvider.notifier).state = 1;
                          },
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: data == 1
                                    ? primaryColor
                                    : Colors.transparent,
                                border: Border(
                                    left: BorderSide(
                                        color: data == 1
                                            ? textColor
                                            : primaryColor,
                                        width: 2))),
                            child: Text(
                              Strings.project2,
                              style: TextStyle(
                                  color: data == 1
                                      ? textLight2
                                      : textLight,
                                  height: 1.5,
                                  fontSize: 11,
                                  fontFamily: 'sfmono'),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            dataPage = 3;
                            ref.read(selectedExpProvider.notifier).state = 2;
                          },
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: data == 2
                                    ? primaryColor
                                    : Colors.transparent,
                                border: Border(
                                    left: BorderSide(
                                        color: data == 2
                                            ? textColor
                                            : primaryColor,
                                        width: 2))),
                            child: Text(
                              Strings.project3,
                              style: TextStyle(
                                  color: data == 2
                                      ? textLight2
                                      : textLight,
                                  height: 1.5,
                                  fontSize: 11,
                                  fontFamily: 'sfmono'),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            dataPage = 4;
                            ref.read(selectedExpProvider.notifier).state = 3;
                          },
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: data == 3
                                    ? primaryColor
                                    : Colors.transparent,
                                border: Border(
                                    left: BorderSide(
                                        color: data == 3
                                            ? textColor
                                            : primaryColor,
                                        width: 2))),
                            child: Text(
                              Strings.project4,
                              style: TextStyle(
                                  color: data == 3
                                      ? textLight2
                                      : textLight,
                                  height: 1.5,
                                  fontSize: 11,
                                  fontFamily: 'sfmono'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(projectsList[data].desig.toString(),
                          style: GoogleFonts.roboto(
                              color: textColor,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              fontSize: 18),
                        ),
                        projectsList[data].points!
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
          InkWell(
            onTap: () {
              switch (dataPage){
                case 1 :
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeCalculator()));
                  break;
                case 2 :
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => GifAnimation()));
                  break;
                case 3 :
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeBMI()));
                  break;
                case 4 :
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeSmartBadge()));
                  break;
              }
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
                child: Text(Strings.buttonProject,
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 13,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'sfmono')),
              ),
            ),
          ),
          SizedBox(height: 120)
        ],
      ),
    );
  }
}
