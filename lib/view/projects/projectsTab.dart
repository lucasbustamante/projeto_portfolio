import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/resource/appClass.dart';
import '../../controller/generalController.dart';
import '../../model/projectModel.dart';
import '../../resource/colors.dart';
import '../../resource/strings.dart';

class ProjectsTab extends StatefulWidget {
  const ProjectsTab({Key? key}) : super(key: key);

  @override
  State<ProjectsTab> createState() => _ProjectsTabState();
}

class _ProjectsTabState extends State<ProjectsTab> {

  @override
  Widget build(BuildContext context) {
    List<ProjectsModel> projectsList = [
      ProjectsModel(
          desig: Strings.project1,
          points: Column(
            children: [
              Container(
                child: Text(Strings.info1,
                    style: TextStyle(
                        color: textLight,
                        letterSpacing: 1,
                        height: 1.5,
                        fontSize: 14,
                        fontFamily: 'sfmono')),
                height: 20,
                width: 600,
              ),
              Image.asset('assets/images/projectMobi1.png',
                height: 500),
            ],
          )),
      ProjectsModel(
          desig: Strings.project2,
          points: Column(
            children: [
              Container(

                child: Text(Strings.info2,
                    style: TextStyle(
                        color: textLight,
                        letterSpacing: 1,
                        height: 1.5,
                        fontSize: 14,
                        fontFamily: 'sfmono')),
                height: 20,
                width: 600,
              ),
              Image.asset('assets/images/projectMobi2.png',
                  height: 500),
            ],
          )),
      ProjectsModel(
          desig: Strings.project3,
          points: Column(
            children: [
              Container(
                child: Text(Strings.info3,
                    style: TextStyle(
                        color: textLight,
                        letterSpacing: 1,
                        height: 1.5,
                        fontSize: 14,
                        fontFamily: 'sfmono')),
                height: 20,
                width: 600,
              ),
              Image.asset('assets/images/projectMobi3.png',
                  height: 500),
            ],
          )),
      ProjectsModel(
          desig: Strings.project4,
          points: Column(
            children: [
              Container(
                child: Text(Strings.info4,
                  style: TextStyle(
                      color: textLight,
                      letterSpacing: 1,
                      height: 1.5,
                      fontSize: 14,
                      fontFamily: 'sfmono'),),
                height: 20,
                width: 600,

              ),
              Image.asset('assets/images/projectMobi4.png',
                  height: 500),

            ],
          )),
    ];

    return Container(
      height: 800,
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
                color:  textLight,
              )
            ],
          ),
          Consumer(builder: (context, ref, child) {
            var data = ref.watch(selectedExpProvider);
            return Container(
              width: AppClass().getMqWidth(context) * 0.8,
              margin: EdgeInsets.only(top: 20.0, left: 10.0),
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
                                  letterSpacing: 1,
                                  height: 1.5,
                                  fontSize: 14,
                                  fontFamily: 'sfmono'),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
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
                                  letterSpacing: 1,
                                  height: 1.5,
                                  fontSize: 14,
                                  fontFamily: 'sfmono'),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
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
                                  letterSpacing: 1,
                                  height: 1.5,
                                  fontSize: 14,
                                  fontFamily: 'sfmono'),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
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
                                  letterSpacing: 1,
                                  height: 1.5,
                                  fontSize: 14,
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
                                fontSize: 20),

                        ),
                        projectsList[data].points!
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150),
            child: Text('Para testar os aplicativos acesse este site através '
                'do smartphone e clique no botão testar',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: textLight,
                    letterSpacing: 1,
                    height: 1.5,
                    fontSize: 14,
                    fontFamily: 'sfmono')),
          )
        ],
      ),
    );
  }
}
